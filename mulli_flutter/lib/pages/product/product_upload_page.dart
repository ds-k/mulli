import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mulli_client/mulli_client.dart';
import 'package:mulli_flutter/constant/colors.dart';

class ProductUploadPage extends StatefulWidget {
  const ProductUploadPage({super.key});

  @override
  State<ProductUploadPage> createState() => _ProductUploadPageState();
}

class _ProductUploadPageState extends State<ProductUploadPage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedBrand;
  final List<String> _clubTypes = [
    '세트',
    '드라이버',
    '우드/유틸',
    '아이언',
    '웨지',
    '퍼터',
    '기타'
  ];
  final List<String> _shaftTypes = ["X", "S", "SR", "R", "A", "L", "기타"];
  String? _selectedClubType;
  String? _selectedShaftType;
  @override
  Widget build(BuildContext context) {
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
        actions: [
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // TODO: 게시글 업로드 로직
              }
            },
            child: const Text('작성하기'),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 사진 업로드 섹션
                const SizedBox(height: 20),
                const Text('사진',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: AppColors.lightGray,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: AppColors.darkGray),
                    onPressed: () {
                      // TODO: 이미지 선택 로직
                    },
                  ),
                ),
                const SizedBox(height: 24),

                // 클럽 종류 선택
                const Text('클럽 종류',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 10,
                  children: _clubTypes
                      .map((type) => ChoiceChip(
                            showCheckmark: false,
                            backgroundColor: AppColors.lightGray,
                            selectedColor: AppColors.black,
                            labelStyle: TextStyle(
                              color: _selectedClubType == type
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
                            selected: _selectedClubType == type,
                            onSelected: (selected) {
                              setState(() {
                                _selectedClubType = selected ? type : null;
                              });
                            },
                          ))
                      .toList(),
                ),
                const SizedBox(height: 24),

                // 샤프트 종류 선택
                const Text('샤프트 종류',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 10,
                  children: _shaftTypes
                      .map((type) => ChoiceChip(
                            showCheckmark: false,
                            backgroundColor: AppColors.lightGray,
                            selectedColor: AppColors.black,
                            labelStyle: TextStyle(
                              color: _selectedShaftType == type
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
                            selected: _selectedShaftType == type,
                            onSelected: (selected) {
                              setState(() {
                                _selectedShaftType = selected ? type : null;
                              });
                            },
                          ))
                      .toList(),
                ),
                const SizedBox(height: 24),

                // 브랜드 선택
                const Text('브랜드',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  hint: const Text('브랜드를 선택해주세요'),
                  value: _selectedBrand,
                  items: ['Callaway', 'TaylorMade', 'PING'].map((brand) {
                    return DropdownMenuItem(
                      value: brand,
                      child: Text(brand),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedBrand = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '브랜드를 선택해주세요';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // 제목 입력
                const Text('제목',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '제목을 입력해주세요',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '제목을 입력해주세요';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // 가격 입력
                const Text('가격',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '가격을 입력해주세요',
                    suffixText: '원',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '가격을 입력해주세요';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // 내용 입력
                const Text('내용',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '상품을 설명해주세요',
                  ),
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '내용을 입력해주세요';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
