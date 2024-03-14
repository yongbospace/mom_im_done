import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mom_im_done/common/const/data.dart';
import 'package:mom_im_done/homework/component/homework_card.dart';

class HomeworkScreen extends StatelessWidget {
  const HomeworkScreen({super.key});

  Future<List> paginateHomework() async {
    final dio = Dio();

    final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);

    final resp = await dio.get('http://$ip:3000/homeworks',
        queryParameters: {'take': 5},
        options: Options(headers: {'authorization': 'Bearer $accessToken'}));
    return resp.data['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: FutureBuilder<List>(
          builder: (context, AsyncSnapshot<List> snapshot) {
            if (!snapshot.hasData) {
              return Container();
            }
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                final item = snapshot.data![index];
                return HomeworkCard(
                  title: item['title'],
                  range: item['range'],
                  dueDate: item['dueDate'],
                  author: item['author']['nickname'],
                  child: item['child']['nickname'],
                  isDone: item['isDone'],
                );
              },
              separatorBuilder: (_, index) {
                return SizedBox(height: 8);
              },
            );
          },
          future: paginateHomework(),
        ));
  }
}
