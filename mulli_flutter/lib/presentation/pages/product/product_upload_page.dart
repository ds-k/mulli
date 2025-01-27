import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mulli_client/mulli_client.dart';

class ProductUploadPage extends StatefulWidget {
  const ProductUploadPage({super.key});

  @override
  State<ProductUploadPage> createState() => _ProductUploadPageState();
}

class _ProductUploadPageState extends State<ProductUploadPage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedBrand;
  final List<String> _clubTypes = ['세트', '드라이버', '우드/유틸', '아이언', '웨지', '퍼터'];
  String? _selectedClubType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('판매글 작성'),
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 사진 업로드 섹션
                const Text('사진',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add_photo_alternate),
                    onPressed: () {
                      // TODO: 이미지 선택 로직
                    },
                  ),
                ),
                const SizedBox(height: 24),

                // 클럽 종류 선택
                const Text('클럽 종류',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: _clubTypes
                      .map((type) => ChoiceChip(
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

                // 브랜드 선택
                const Text('브랜드',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
