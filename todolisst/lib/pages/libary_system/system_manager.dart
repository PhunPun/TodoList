import 'package:flutter/material.dart';
import 'package:baitap1/pages/libary_system/book_list_page.dart';
import 'package:baitap1/pages/libary_system/student_list_page.dart';
import 'package:baitap1/pages/libary_system/manager_page.dart';

class SystemManager extends StatefulWidget {
  const SystemManager({super.key});

  @override
  State<SystemManager> createState() => _SystemManagerState();
}

class _SystemManagerState extends State<SystemManager> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    ManagerPage(),
    BookListPage(),
    StudentListPage(),
  ];

  final List<String> _titles = [
    'Quản lý mượn sách',
    'Danh sách Sách',
    'Danh sách Sinh viên',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Quản lý'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'DS Sách'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Sinh viên'),
        ],
      ),
    );
  }
}
