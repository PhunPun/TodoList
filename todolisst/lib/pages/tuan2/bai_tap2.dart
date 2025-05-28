import 'package:flutter/material.dart';

class BaiTap2 extends StatefulWidget {
  const BaiTap2({super.key});

  @override
  State<BaiTap2> createState() => _BaiTap2State();
}

class _BaiTap2State extends State<BaiTap2> {
  final TextEditingController NameController = TextEditingController();
  final TextEditingController AgeController = TextEditingController();
  String ? result;

  void checkAge(){
    int? age = int.tryParse(AgeController.text);
    String? categories;
    if(NameController.text.trim() == ""){
      setState(() {
        result = "Vui Lòng nhập Họ và tên";
      });
      _showDialog(result!);
      return;
    }
    if(age == null){
      setState(() {
        result = "Vui lòng nhập tuổi là số";
      });
      _showDialog(result!);
      return;
    }
    if (age > 65) {
      categories = 'Người già';
    } else if (age > 6) {
      categories = 'Người lớn';
    } else if (age >= 2) {
      categories = 'Trẻ em';
    } else {
      categories = 'Em bé';
    }
    setState(() {
      result = '${NameController.text} là $categories';
    });
    _showDialog(result!);
  }
  void _showDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Kết quả'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Ok'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thực Hành 01', style: TextStyle(fontSize: 30),),
            const SizedBox(height: 30,),
            Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 40),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text('Họ và tên:'),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            controller: NameController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text('Tuổi:'),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            controller: AgeController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: checkAge,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child: Text('Kiểm tra', style: TextStyle( color: Colors.white, fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}