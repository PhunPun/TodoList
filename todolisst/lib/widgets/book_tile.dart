import 'package:baitap1/model/book_model.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final Book book;
  final bool selected;
  final VoidCallback onChanged;

  const BookTile({
    super.key,
    required this.book,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: selected,
        onChanged: (_) => onChanged(),
      ),
      title: Text(book.title),
    );
  }
}
