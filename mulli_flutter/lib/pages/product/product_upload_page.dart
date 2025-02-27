import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mulli_client/mulli_client.dart';
import 'package:mulli_flutter/constant/colors.dart';
import 'package:mulli_flutter/providers/client_provider.dart';
import 'package:mulli_flutter/providers/brands_provider.dart';
import 'viewmodel/product_upload_viewmodel.dart';

class ProductUploadPage extends ConsumerWidget {
  const ProductUploadPage({super.key});

  InputDecoration _buildInputDecoration(String hintText, [String? suffixText]) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: AppColors.darkGray),
      suffixText: suffixText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.lightGray),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.lightGray),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.black),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(productUploadProvider.notifier);
    final state = ref.watch(productUploadProvider);
    final brandsAsyncValue = ref.watch(brandsProvider);
    final currentYear = DateTime.now().year;

    print(state.isValid);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          '판매글 작성',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _buildSectionTitle('사진'),
                const SizedBox(height: 10),
                _buildImagePicker(state, viewModel),
                const SizedBox(height: 24),
                _buildSectionTitle('클럽'),
                const SizedBox(height: 8),
                _buildClubTypeSelector(state, viewModel),
                const SizedBox(height: 24),
                _buildSectionTitle('플렉스'),
                const SizedBox(height: 8),
                _buildFlexTypeSelector(state, viewModel),
                const SizedBox(height: 24),
                _buildSectionTitle('브랜드'),
                const SizedBox(height: 8),
                _buildBrandSelector(
                    brandsAsyncValue, state, viewModel, context),
                const SizedBox(height: 24),
                _buildSectionTitle('연식'),
                const SizedBox(height: 8),
                _buildYearSelector(currentYear, state, viewModel, context),
                const SizedBox(height: 24),
                _buildSectionTitle('제목'),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: _buildInputDecoration('제목을 입력해주세요'),
                  onChanged: viewModel.updateTitle,
                ),
                const SizedBox(height: 24),
                _buildSectionTitle('가격'),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: _buildInputDecoration('가격을 입력해주세요', '원'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: viewModel.updatePrice,
                ),
                const SizedBox(height: 24),
                _buildSectionTitle('내용'),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: _buildInputDecoration('상품을 설명해주세요'),
                  maxLines: 5,
                  onChanged: viewModel.updateDescription,
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: !state.isValid
                        ? null
                        : () async {
                            try {
                              // 로딩 표시
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (context) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );

                              await viewModel.uploadProduct();

                              // 로딩 닫기
                              Navigator.of(context).pop();

                              // 성공 시 이전 화면으로 이동
                              Navigator.of(context).pop();
                            } catch (e) {
                              // 로딩 닫기
                              Navigator.of(context).pop();
                              print(e);
                              // 에러 메시지 표시
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('업로드 실패: $e')),
                              );
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.black,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '작성하기',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildImagePicker(
      ProductUploadState state, ProductUploadViewModel viewModel) {
    return Row(
      children: [
        // 이미지 추가 버튼
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.add, color: AppColors.darkGray),
            onPressed: () async {
              final ImagePicker picker = ImagePicker();
              final List<XFile> images = await picker.pickMultiImage();
              if (images.isNotEmpty) {
                for (var image in images) {
                  viewModel.addImage(image.path);
                }
              }
            },
          ),
        ),
        const SizedBox(width: 12),
        // 선택된 이미지 미리보기
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var imagePath in state.images)
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            File(imagePath),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: IconButton(
                            icon:
                                const Icon(Icons.close, color: AppColors.white),
                            onPressed: () => viewModel.removeImage(imagePath),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildClubTypeSelector(
      ProductUploadState state, ProductUploadViewModel viewModel) {
    return Wrap(
      spacing: 10,
      children: ['세트', '드라이버', '우드/유틸', '아이언', '웨지', '퍼터', '기타']
          .map((type) => ChoiceChip(
                showCheckmark: false,
                backgroundColor: AppColors.lightGray,
                selectedColor: AppColors.black,
                labelStyle: TextStyle(
                  color: state.selectedClubType == type
                      ? Colors.white
                      : AppColors.darkGray,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: AppColors.lightGray,
                    width: 0,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                label: Text(type),
                selected: state.selectedClubType == type,
                onSelected: (selected) {
                  viewModel.updateClubType(selected ? type : null);
                },
              ))
          .toList(),
    );
  }

  Widget _buildFlexTypeSelector(
      ProductUploadState state, ProductUploadViewModel viewModel) {
    return Wrap(
      spacing: 10,
      children: ['X', 'S', 'SR', 'R', 'A', 'L', '기타']
          .map((type) => ChoiceChip(
                showCheckmark: false,
                backgroundColor: AppColors.lightGray,
                selectedColor: AppColors.black,
                labelStyle: TextStyle(
                  color: state.selectedFlexType == type
                      ? Colors.white
                      : AppColors.darkGray,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: AppColors.lightGray,
                    width: 0,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                label: Text(type),
                selected: state.selectedFlexType == type,
                onSelected: (selected) {
                  viewModel.updateFlexType(selected ? type : null);
                },
              ))
          .toList(),
    );
  }

  Widget _buildBrandSelector(
      AsyncValue<List<Brands>> brandsAsyncValue,
      ProductUploadState state,
      ProductUploadViewModel viewModel,
      BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            return Container(
              color: AppColors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '브랜드 선택',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  brandsAsyncValue.when(
                    data: (brands) => Expanded(
                      child: ListView.builder(
                        itemCount: brands.length,
                        itemBuilder: (context, index) {
                          final brand = brands[index];
                          return ListTile(
                            leading: Image.network(
                              brand.logoImageUrl,
                              width: 30,
                              height: 30,
                            ),
                            title: Text(brand.name),
                            selected: state.selectedBrand == brand.name,
                            textColor: AppColors.darkGray,
                            selectedColor: AppColors.black,
                            onTap: () {
                              viewModel.updateBrand(brand.name, brand.id!);
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) => Text('Error: $error'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: state.selectedBrand != null
                ? AppColors.black
                : AppColors.lightGray,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              state.selectedBrand ?? '브랜드를 선택해주세요',
              style: TextStyle(
                  color: state.selectedBrand != null
                      ? AppColors.black
                      : AppColors.darkGray,
                  fontSize: 16),
            ),
            const Icon(Icons.keyboard_arrow_down, color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildYearSelector(int currentYear, ProductUploadState state,
      ProductUploadViewModel viewModel, BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            return Container(
              color: AppColors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '연식 선택',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        final year = currentYear - index;
                        return ListTile(
                          title: Text(year.toString()),
                          selected: state.year == year,
                          textColor: AppColors.darkGray,
                          selectedColor: AppColors.black,
                          onTap: () {
                            viewModel.updateYear(year);
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: state.year != null ? AppColors.black : AppColors.lightGray,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              state.year != null ? '${state.year}년' : '연식을 선택해주세요',
              style: TextStyle(
                color:
                    state.year != null ? AppColors.black : AppColors.darkGray,
                fontSize: 16,
              ),
            ),
            const Icon(Icons.keyboard_arrow_down, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
