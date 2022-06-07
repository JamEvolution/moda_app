import 'package:flutter/material.dart';

class Sabitler {
  static const TextStyle appBarTextStyle =
      TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black);
  static const TextStyle followTextStyle =
      TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white);
  static const MaterialColor mainColor = Colors.brown;
  static const Icon appBarActionIcon = Icon(Icons.photo_camera, color: Colors.grey, size: 32);
  static final BorderRadius imageBoxBorderRadius = BorderRadius.circular(30);
  static final BorderRadius logoBoxBorderRadius = BorderRadius.circular(15);
  static final BorderRadius tagBoxBorderRadius = BorderRadius.circular(5);
  static const SizedBox customWidth30SizedBox = SizedBox(width: 30);
  static const SizedBox customWidth5SizedBox = SizedBox(width: 5);
  static const SizedBox customHeightSizedBox = SizedBox(height: 10);
  static const EdgeInsets customPadding16 = EdgeInsets.all(16);
  static const TextStyle customTextSpanStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle sharedTextStyle = TextStyle(fontFamily: 'Montserrat', fontSize: 13, color: Colors.grey);
  static const TextStyle tagTextStyle = TextStyle(fontFamily: 'Montserrat', fontSize: 10, color: Colors.brown);
  static const TextStyle shareAndCommentAndLikeTextStyle = TextStyle(fontFamily: 'Montserrat', fontSize: 16);
  static final Icon shareIcon = Icon(Icons.reply, color: Colors.brown.withOpacity(0.4), size: 30);
  static final Icon commentIcon = Icon(Icons.comment, color: Colors.brown.withOpacity(0.4), size: 30);
  static const Icon likeIcon = Icon(Icons.favorite, color: Colors.red, size: 22);
  static const Icon tab1Icon = Icon(Icons.manage_history_sharp, color: Colors.grey, size: 22);
  static const Icon tab2Icon = Icon(Icons.key_off, color: Colors.grey, size: 22);
  static const Icon tab3Icon = Icon(Icons.navigate_before_rounded, color: Colors.black, size: 22);
  static const Icon tab4Icon = Icon(Icons.one_k_plus, color: Colors.grey, size: 22);

  static const TextStyle detailTitleTextStyle =
      TextStyle(fontSize: 18, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);
  static const TextStyle detailSubTitleTextStyle =
      TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w500, color: Colors.grey);
  static const TextStyle detailMoneyTextStyle = TextStyle(fontSize: 22, fontFamily: 'Montserrat');
  static const TextStyle detailTagActionTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Colors.white);
}
