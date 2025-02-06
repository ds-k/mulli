// import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import '../../domain/entity/product.dart';
// import '../../domain/usecase/create_product.dart';

// final productUploadProvider =
//     AsyncNotifierProvider<ProductUploadViewModel, void>(() {
//   return ProductUploadViewModel();
// });

// class ProductUploadViewModel extends AsyncNotifier<void> {
//   String? selectedBrand;
//   String? selectedClubType;
//   List<String> images = [];
//   String title = '';
//   String description = '';
//   int? price;

//   @override
//   Future<void> build() async {
//     // 초기 상태는 null
//     return;
//   }

//   Future<void> uploadProduct() async {
//     if (!_validateForm()) return;

//     state = const AsyncValue.loading();

//     try {
//       final product = Product(
//         userId: 1, // TODO: Get from auth
//         title: title,
//         description: description,
//         price: price!,
//         brandId: int.parse(selectedBrand!),
//         clubType: selectedClubType!,
//         shaftType: 'REGULAR', // TODO: Add to form
//         flexType: 'SR', // TODO: Add to form
//         year: DateTime.now().year,
//         location: '서울시 강남구', // TODO: Get from user location
//         images: images,
//         createdAt: DateTime.now(),
//         updatedAt: DateTime.now(),
//       );

//       // TODO: Implement actual product creation
//       // await ref.read(createProductProvider).call(product);

//       state = const AsyncValue.data(null);
//     } catch (error, stackTrace) {
//       state = AsyncValue.error(error, stackTrace);
//     }
//   }

//   void updateBrand(String? brand) {
//     selectedBrand = brand;
//   }

//   void updateClubType(String? type) {
//     selectedClubType = type;
//   }

//   void updateTitle(String value) {
//     title = value;
//   }

//   void updateDescription(String value) {
//     description = value;
//   }

//   void updatePrice(String value) {
//     price = int.tryParse(value);
//   }

//   void addImage(String imagePath) {
//     images.add(imagePath);
//   }

//   bool _validateForm() {
//     return selectedBrand != null &&
//         selectedClubType != null &&
//         images.isNotEmpty &&
//         title.isNotEmpty &&
//         description.isNotEmpty &&
//         price != null;
//   }
// }
