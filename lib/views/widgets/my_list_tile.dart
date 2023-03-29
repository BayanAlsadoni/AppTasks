import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  PageController pageController;

  String title;
  String subtitle;
  Widget leading;
  Widget trailing;
  bool isSmallSecreen;
  int pageNum;
  MyListTile(this.title, this.subtitle, this.leading, this.trailing,
      this.pageNum, this.pageController,
      [this.isSmallSecreen = false]);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: leading,
      trailing: trailing,
      // leading: Icon(Icons.list),
      // trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        pageController.jumpToPage(pageNum);

        if (isSmallSecreen) {
          Navigator.of(context).pop();
        }
      },
    );
  }
}
