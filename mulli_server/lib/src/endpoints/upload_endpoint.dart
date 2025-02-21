import 'package:serverpod/serverpod.dart';

class UploadEndpoint extends Endpoint {
  // 단일 이미지 업로드
  Future<String?> getUploadDescription(Session session, String path) async {
    try {
      session.log('Creating upload description for path: $path');

      final description =
          await session.storage.createDirectFileUploadDescription(
        storageId: 'public',
        path: path,
      );

      if (description != null) {
        session.log('Successfully created upload description');
      } else {
        session.log('Failed to create upload description');
      }

      return description;
    } catch (e) {
      session.log('Error creating upload description: $e');
      return null;
    }
  }

  Future<bool> verifyUpload(Session session, String path) async {
    try {
      session.log('Verifying upload for path: $path');

      // 1. 파일 존재 여부 확인
      final exists = await session.storage.fileExists(
        storageId: 'public',
        path: path,
      );

      session.log('File exists check: $exists');

      if (!exists) {
        session.log('File does not exist at path: $path');
        return false;
      }

      // 2. 업로드 검증
      final isVerified = await session.storage.verifyDirectFileUpload(
        storageId: 'public',
        path: path,
      );

      session.log('Upload verification result: $isVerified');

      // 3. 파일이 공개적으로 접근 가능한지 확인
      if (isVerified) {
        final publicUrl = await session.storage.getPublicUrl(
          storageId: 'public',
          path: path,
        );
        session.log('Public URL generated: $publicUrl');
      }

      return isVerified;
    } catch (e) {
      session.log('Error verifying upload: $e');
      return false;
    }
  }

  // 추가: 파일 존재 여부만 확인하는 메서드
  Future<bool> checkFileExists(Session session, String path) async {
    try {
      session.log('Checking if file exists at path: $path');

      final exists = await session.storage.fileExists(
        storageId: 'public',
        path: path,
      );

      session.log('File exists result: $exists');
      return exists;
    } catch (e) {
      session.log('Error checking file existence: $e');
      return false;
    }
  }
}
