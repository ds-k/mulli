import 'dart:io';
import 'dart:convert';
import 'dart:developer' as dev;

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mulli_client/mulli_client.dart';
import 'package:mulli_flutter/providers/client_provider.dart';
import 'package:http/http.dart' as http;

class ProductUploadState {
  final String? title;
  final String? description;
  final double? price;
  final String? selectedBrand;
  final int? brandId;
  final String? selectedClubType;
  final String? selectedFlexType;
  final int? year;
  final String? region1;
  final String? region2;
  final String? region3;
  final String? region4;
  final String? salesStatus;
  final double? lat;
  final double? lng;
  final List<String> images;
  final bool isValid;

  ProductUploadState({
    this.title,
    this.description,
    this.price,
    this.selectedBrand,
    this.brandId,
    this.selectedClubType,
    this.selectedFlexType,
    this.year,
    this.region1,
    this.region2,
    this.region3,
    this.region4,
    this.salesStatus = '판매중',
    this.lat,
    this.lng,
    this.images = const [],
    this.isValid = false,
  });

  ProductUploadState copyWith({
    String? title,
    String? description,
    double? price,
    String? selectedBrand,
    int? brandId,
    String? selectedClubType,
    String? selectedFlexType,
    int? year,
    String? region1,
    String? region2,
    String? region3,
    String? region4,
    String? salesStatus,
    double? lat,
    double? lng,
    List<String>? images,
    bool? isValid,
  }) {
    return ProductUploadState(
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      selectedBrand: selectedBrand ?? this.selectedBrand,
      brandId: brandId ?? this.brandId,
      selectedClubType: selectedClubType ?? this.selectedClubType,
      selectedFlexType: selectedFlexType ?? this.selectedFlexType,
      year: year ?? this.year,
      region1: region1 ?? this.region1,
      region2: region2 ?? this.region2,
      region3: region3 ?? this.region3,
      region4: region4 ?? this.region4,
      salesStatus: salesStatus ?? this.salesStatus,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      images: images ?? this.images,
      isValid: isValid ?? this.isValid,
    );
  }
}

class ProductUploadViewModel extends Notifier<ProductUploadState> {
  @override
  ProductUploadState build() {
    return ProductUploadState();
  }

  void updateTitle(String title) {
    state = state.copyWith(title: title);
    _validateForm();
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
    _validateForm();
  }

  void updatePrice(String priceStr) {
    final price = double.tryParse(priceStr);
    state = state.copyWith(price: price);
    _validateForm();
  }

  void updateBrand(String brand, int brandId) {
    state = state.copyWith(
      selectedBrand: brand,
      brandId: brandId,
    );
    _validateForm();
  }

  void updateClubType(String? type) {
    state = state.copyWith(selectedClubType: type);
    _validateForm();
  }

  void updateFlexType(String? type) {
    state = state.copyWith(selectedFlexType: type);
    _validateForm();
  }

  void updateYear(int year) {
    state = state.copyWith(year: year);
    _validateForm();
  }

  void updateRegion(String region1, String region2,
      [String? region3, String? region4]) {
    state = state.copyWith(
      region1: region1,
      region2: region2,
      region3: region3,
      region4: region4,
    );
    _validateForm();
  }

  void updateLocation(double lat, double lng) {
    state = state.copyWith(lat: lat, lng: lng);
  }

  void addImage(String imagePath) {
    state = state.copyWith(images: [...state.images, imagePath]);
    _validateForm();
  }

  void removeImage(String imagePath) {
    state = state.copyWith(
      images: state.images.where((image) => image != imagePath).toList(),
    );
    _validateForm();
  }

  void _validateForm() {
    final isValid = state.title != null &&
        state.title!.isNotEmpty &&
        state.description != null &&
        state.description!.isNotEmpty &&
        state.price != null &&
        state.price! > 0 &&
        state.selectedBrand != null &&
        state.brandId != null &&
        state.selectedClubType != null &&
        state.selectedFlexType != null &&
        state.year != null &&
        // state.region1 != null &&
        // state.region2 != null &&
        state.images.isNotEmpty;

    state = state.copyWith(isValid: isValid);
  }

  Future<void> uploadProduct() async {
    final client = ref.read(clientProvider);
    final List<String> uploadedUrls = [];

    for (int i = 0; i < state.images.length; i++) {
      try {
        final path = state.images[i];
        final file = File(path);
        final fileName = path.split('/').last;

        // 이미지 압축
        final compressedImage = await FlutterImageCompress.compressWithFile(
          file.absolute.path,
          minWidth: 1024,
          minHeight: 1024,
          quality: 80,
        );

        if (compressedImage == null) continue;

        // 각 이미지마다 새로운 업로드 설명 생성
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final imagePath = 'products/$timestamp-$fileName';
        final uploadDescription =
            await client.upload.getUploadDescription(imagePath);

        if (uploadDescription != null) {
          dev.log(
            'Upload description',
            name: 'FileUpload',
            error: const JsonEncoder.withIndent('  ')
                .convert(jsonDecode(uploadDescription)),
          );

          print('Starting upload for image: $imagePath');
          print('Image size: ${compressedImage.length} bytes');

          // 업로드 설명 로깅
          final uploadDescriptionJson = jsonDecode(uploadDescription);
          // dev.log(uploadDescriptionJson);
          print('Upload URL: ${uploadDescriptionJson['url']}');
          print('Upload field: ${uploadDescriptionJson['field']}');
          print('Upload filename: ${uploadDescriptionJson['file-name']}');

          final uploader = FileUploader(uploadDescription);
          final stream = Stream.value(compressedImage.toList());

          // 업로드 시도
          final uploadResult = await uploader.upload(
            stream,
            compressedImage.length,
          );

          print('Upload result: $uploadResult');

          if (!uploadResult) {
            print('Upload failed, checking server verification...');
            // 서버 측 검증 시도
            final exists = await client.upload.verifyUpload(imagePath);
            print('Server verification result: $exists');
            throw Exception('Upload failed');
          }

          final url =
              'https://mulli.s3.ap-northeast-2.amazonaws.com/$imagePath';
          uploadedUrls.add(url);
        }
      } catch (e, stack) {
        print('Upload error: $e');
        print('Stack trace: $stack');
        continue;
      }
    }

    if (uploadedUrls.isEmpty) {
      throw Exception('이미지 업로드에 실패했습니다');
    }

    // 제품 정보 생성
    //   await client.products.createProduct(
    //     title: state.title!,
    //     description: state.description!,
    //     price: state.price!,
    //     brandId: state.brandId!,
    //     clubType: state.selectedClubType!,
    //     flexType: state.selectedFlexType!,
    //     year: state.year!,
    //     imageUrls: uploadedUrls,
    //   );
  }

  void uploadProductImageTest() async {
    final client = ref.read(clientProvider);
    final exists =
        await client.upload.verifyUpload('products/1713086400-test.png');
    print('Server verification result: $exists');
  }
}

final productUploadProvider =
    NotifierProvider<ProductUploadViewModel, ProductUploadState>(
  () => ProductUploadViewModel(),
);
