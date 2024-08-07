
import '../../domain/repositories/batch_remote_datasource.dart';
import '../../domain/repositories/hod_batch_repository.dart';
import '../datasource/hod_remote_data_source_impl.dart';

class HodBatchRepositoryImpl implements HodBatchRepository {
  final HodBatchRemoteDataSource remoteDataSource;

  HodBatchRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<String>> fetchBatchIds(String dept,String facultyId,String role) async {
    try {
      return await remoteDataSource.fetchBatchIdsFromDatabase(dept,facultyId,role);
    } catch (error) {
      throw error;
    }
  }
}
