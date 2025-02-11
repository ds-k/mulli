import 'package:serverpod/serverpod.dart';

class UploadEndpoint extends Endpoint {
  // 단일 이미지 업로드
  Future<String?> uploadImage(
    Session session,
    List<int> imageData,
    String fileName,
  ) async {
    try {
      // 파일명에 타임스탬프 추가하여 유니크한 파일명 생성
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final extension = fileName.split('.').last;
      final path = 'products/$timestamp.$extension'; // 확장자만 사용

      // 직접 업로드 설명 생성
      final uploadDescription =
          await session.storage.createDirectFileUploadDescription(
        storageId: 'public',
        path: path,
      );

      if (uploadDescription == null) {
        throw Exception('Failed to create upload description');
      }

      // 업로드 검증
      final isVerified = await session.storage.verifyDirectFileUpload(
        storageId: 'public',
        path: path,
      );

      if (!isVerified) {
        throw Exception('Failed to verify upload');
      }

      // S3 URL 생성
      return 'https://mulli.s3.ap-northeast-2.amazonaws.com/$path';
    } catch (e) {
      session.log('Failed to upload image: $e');
      return null;
    }
  }

  // 다중 이미지 업로드
  Future<List<String>> uploadMultipleImages(
    Session session,
    List<List<int>> imagesData,
    List<String> fileNames,
  ) async {
    if (imagesData.length != fileNames.length) {
      throw Exception('Images data and file names length mismatch');
    }

    final urls = <String>[];

    for (var i = 0; i < imagesData.length; i++) {
      try {
        final url = await uploadImage(
          session,
          imagesData[i],
          fileNames[i],
        );

        if (url != null) {
          urls.add(url);
        }
      } catch (e) {
        session.log('Failed to upload image ${fileNames[i]}: $e');
      }
    }

    return urls;
  }
}
