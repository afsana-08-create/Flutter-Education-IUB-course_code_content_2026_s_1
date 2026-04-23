import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;

  final VoidCallback? onTap;

  const TaskCardWidget({super.key, required this.title, required this.subtitle, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {

    void handleTap() {
      print("The card was tapped for $title: $subtitle");
    }

    return Card(
      elevation: 1,
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        leading: icon != null ? Icon(icon) : Icon(Icons.task),
        trailing: IconButton(
          onPressed: onTap ?? handleTap,
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
