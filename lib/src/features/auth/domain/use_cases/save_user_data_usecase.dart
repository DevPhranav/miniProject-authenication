
import '../repositories/secure_storage_repository.dart';

class SaveUserDataUseCase {
  final SecureStorageRepository secureStorageRepository;

  SaveUserDataUseCase(this.secureStorageRepository);

  Future<void> execute({
    required String email,
    required String id,
    required String department,
  }) async {
    await secureStorageRepository.saveUserData(
      email: email,
      id: id,
      department: department,
    );
  }
}
