import 'package:baitap1/data/mock_data.dart';
import 'package:flutter/material.dart';

class StudentListPage extends StatelessWidget {
  const StudentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final students = MockData.students;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Danh sách Sinh viên', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: students.isEmpty
                ? const Center(
                    child: Text(
                      'Chưa có sinh viên nào!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: students.length,
                    itemBuilder: (context, index) {
                      final student = students[index];
                      return ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(student.name),
                        subtitle: Text('${student.borrowedBookIds.length} sách đã mượn'),
                      );
                    },
                  ),
          ),
          Align(
            child: ElevatedButton(
              onPressed: () {
              
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minimumSize: const Size(150, 40),
              ),
              child: const Text('Thêm', style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
