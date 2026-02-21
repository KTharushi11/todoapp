import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SerchBarInput extends StatefulWidget {
  TextEditingController textEditingController;
  Function(String) searchData;

  SerchBarInput({
    super.key,
    required this.textEditingController,
    required this.searchData,
  });

  @override
  State<SerchBarInput> createState() => _SerchBarInputState();
}

class _SerchBarInputState extends State<SerchBarInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      onChanged: (value) => widget.searchData(value),
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    )
  }
}