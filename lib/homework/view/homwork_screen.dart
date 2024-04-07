import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mom_im_done/common/const/data.dart';
import 'package:mom_im_done/common/dio/dio.dart';
import 'package:mom_im_done/homework/component/homework_card.dart';
import 'package:mom_im_done/homework/model/homework_model.dart';
import 'package:mom_im_done/homework/repository/homework_repository.dart';

class HomeworkScreen extends StatelessWidget {
  const HomeworkScreen({super.key});

  Future<List<HomeworkModel>> paginateHomework() async {
    final dio = Dio();
    dio.interceptors.add(
      CustomInterceptor(storage: storage),
    );
    final resp =
        await HomeworkRepository(dio, baseUrl: 'http://$ip:3000/homeworks')
            .paginate();
    return resp.data;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: FutureBuilder<List<HomeworkModel>>(
          future: paginateHomework(),
          builder: (context, AsyncSnapshot<List<HomeworkModel>> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                final pItem = snapshot.data![index];
                return HomeworkCard.fromModel(model: pItem);
              },
              separatorBuilder: (_, index) {
                return SizedBox(height: 8);
              },
            );
          },
        ));
  }
}
