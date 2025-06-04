
import 'package:baitap1/model/book_model.dart';
import 'package:baitap1/model/student_model.dart';

class MockData {
  // Danh sách tất cả sách
  static List<Book> books = [
    Book(id: 'b1', title: 'Sách 01'),
    Book(id: 'b2', title: 'Sách 02'),
    Book(id: 'b3', title: 'Sách 03'),
  ];

  // Danh sách sinh viên
  static List<Student> students = [
    Student(id: 's1', name: 'Nguyen Van A', borrowedBookIds: ['b1', 'b2']),
    Student(id: 's2', name: 'Nguyen Thi B', borrowedBookIds: ['b1']),
    Student(id: 's3', name: 'Nguyen Van C', borrowedBookIds: []),
  ];
}
