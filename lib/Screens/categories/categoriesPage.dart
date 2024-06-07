import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/provider/categoryProvider/categoryProvider.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(),
      body:Consumer<CategoriesProvider>(builder: (context, CategoriesProvider model, _) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => const SizedBox(
                height: 100,
                width: 200,
                child: Text("Categoriaes"),
              ),
            )
          ],
        );}
      ),
    );
  }
}
