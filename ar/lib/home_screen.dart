import 'package:ar/controller/home_controller.dart';
import 'package:ar/pages/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Admin"),
            ),
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Title'),
                    subtitle: Text("price: 100"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {                    
                      },
                    ),
                  );
                }),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.to(AddProductPage());
              },
              child: Icon(Icons.add),
            ));
      },
    );
  }
}
