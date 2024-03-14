import 'package:flutter/material.dart';
import 'package:mom_im_done/common/const/colors.dart';

class HomeworkCard extends StatelessWidget {
  final String title;
  final String range;
  final String dueDate;
  final String author;
  final String child;
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.grey[isDone ? 300 : 50],
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
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w800),
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
          color: C_BODY_TEXT_COLOR,
          size: 20.0,
        ),
        SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            color: C_BODY_TEXT_COLOR,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
