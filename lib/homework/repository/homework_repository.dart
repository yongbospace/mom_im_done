import 'package:dio/dio.dart' hide Headers;
import 'package:mom_im_done/common/model/cursor_pagination_model.dart';
import 'package:mom_im_done/homework/model/homework_model.dart';
import 'package:retrofit/retrofit.dart';

part 'homework_repository.g.dart';

@RestApi()
abstract class HomeworkRepository {
  factory HomeworkRepository(Dio dio, {String baseUrl}) = _HomeworkRepository;

  @GET('/')
  @Headers({
    'accessToken': 'true',
  })
  Future<CursorPagination<HomeworkModel>> paginate();
}
