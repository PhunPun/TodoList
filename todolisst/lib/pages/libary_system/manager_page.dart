import 'package:baitap1/data/mock_data.dart';
import 'package:baitap1/model/student_model.dart';
import 'package:baitap1/widgets/book_tile.dart';
import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {
  const ManagerPage({super.key});

  @override
  State<ManagerPage> createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {
  Student currentStudent = MockData.students[0];
  late TextEditingController _nameController;

  @override
    void initState() {
      super.initState();
      _nameController = TextEditingController(text: currentStudent.name);
    }

  void _changeStudent(String newName) {
    final found = MockData.students.firstWhere((s) => s.name == newName, orElse: () => currentStudent);
    setState(() {
      currentStudent = found;
    });
  }

  void _toggleBook(String bookId) {
    setState(() {
      if (currentStudent.borrowedBookIds.contains(bookId)) {
        currentStudent.borrowedBookIds.remove(bookId);
      } else {
        currentStudent.borrowedBookIds.add(bookId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final borrowedBooks = MockData.books
        .where((b) => currentStudent.borrowedBookIds.contains(b.id))
        .toList();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sinh viên', style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _nameController,
                      //initialValue: currentStudent.name,
                      //onFieldSubmitted: _changeStudent,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                    _changeStudent(_nameController.text);
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: const Text('Thay đổi', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Danh sách sách', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: borrowedBooks.isEmpty
                    ? const Center(
                        child: Text(
                          'Bạn chưa mượn quyền sách nào\nNhấn "Thêm" để bắt đầu hành trình đọc sách!',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : ListView(
                        children: borrowedBooks
                            .map((book) => BookTile(
                                  book: book,
                                  selected: true,
                                  onChanged: () => _toggleBook(book.id),
                                ))
                            .toList(),
                      ),
              ),
              Align(
                child: ElevatedButton(
                  onPressed: () {
                    _showAddBookDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    minimumSize: Size(150, 40)
                  ),
                  child: const Text('Thêm', style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _showAddBookDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Chọn sách để mượn'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView(
              shrinkWrap: true,
              children: MockData.books.map((book) {
                final isSelected = currentStudent.borrowedBookIds.contains(book.id);
                return BookTile(
                  book: book,
                  selected: isSelected,
                  onChanged: () {
                    _toggleBook(book.id);
                    Navigator.pop(context); 
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
