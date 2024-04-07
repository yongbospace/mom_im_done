import 'package:flutter/material.dart';
import 'package:mom_im_done/common/const/colors.dart';
import 'package:mom_im_done/homework/model/homework_model.dart';

class HomeworkCard extends StatelessWidget {
  final String title;
  final String range;
  final String dueDate;
  final Map<String, dynamic> author;
  final Map<String, dynamic> child;
  final bool isDone;

  const HomeworkCard({
    required this.title,
    required this.range,
    required this.dueDate,
    required this.author,
    required this.child,
    required this.isDone,
    super.key,
  });

  factory HomeworkCard.fromModel({
    required HomeworkModel model,
  }) {
    return HomeworkCard(
      title: model.title,
      range: model.range,
      dueDate: model.dueDate,
      author: model.author,
      child: model.child,
      isDone: model.isDone,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: isDone ? C_PEACH_LIGHT : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    _IconText(icon: Icons.assignment, text: range),
                    SizedBox(width: 8),
                    _IconText(icon: Icons.timer_outlined, text: dueDate),
                  ],
                ),
              ],
            ),
            Icon(
              isDone ? Icons.check_circle_outline : Icons.circle_outlined,
              size: 36,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const _IconText({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: C_GREY,
          size: 20.0,
        ),
        SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            color: C_GREY,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
