import 'package:baitap1/pages/tuan3/coloum_page.dart';
import 'package:baitap1/pages/tuan3/elevated_button_page.dart';
import 'package:baitap1/pages/tuan3/icon_button_page.dart';
import 'package:baitap1/pages/tuan3/image_page.dart';
import 'package:baitap1/pages/tuan3/passwordfield_page.dart';
import 'package:baitap1/pages/tuan3/row_page.dart';
import 'package:baitap1/pages/tuan3/text_button_page.dart';
import 'package:baitap1/pages/tuan3/text_page.dart';
import 'package:baitap1/pages/tuan3/textfield_page.dart';
import 'package:flutter/material.dart';

class Btvn3 extends StatelessWidget {
  const Btvn3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text ('UI Components List', style: TextStyle(color: Colors.blue),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title('Display'),
                content( context,'Text', 'Displays text', TextPage()),
                content(context, 'Images', 'Displays an image', ImagePage()),

                title('Input'),
                content(context, 'TextField', 'Input field for text', TextfieldPage()),
                content(context, 'PasswordFied', 'Input field for password', PasswordfieldPage()),

                title('Layout'),
                content(context, 'Colum', 'Arranges elements vertically', ColumPage()),
                content(context, 'Row', 'Arranges elements horizontally', RowPage()),

                title('Button'),
                content(context, 'ElevatedButton', 'Raised button', ElevatedButtonPage()),
                content(context, 'TextButton', 'Flat button', TextButtonPage()),
                content(context, 'IconButton', 'Only icon button', IconButtonPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget title(String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
  Widget content(BuildContext context ,String title, String description, Widget page){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page
          )
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[100]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
      ),
    );
  }
}