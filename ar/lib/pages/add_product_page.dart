import 'package:ar/controller/home_controller.dart';
import 'package:ar/pages/widget/drop_down_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl){
          return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Add New Product",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold),
              ),

              //Proudct Name
              TextField(
                controller: ctrl.productNameCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Product Name'),
                    hintText: 'Enter your Product Name'),
              ),
              SizedBox(height: 10),

              // product Discription
              TextField(
                controller: ctrl.productDiscriptionCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Discription'),
                    hintText: 'Enter your Product Discription'),
                maxLines: 4,
              ),
              SizedBox(height: 10),

              //product Img Url
              TextField(
                controller: ctrl.productImgCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Image Url'),
                    hintText: 'Enter your Image Url'),
              ),
              SizedBox(height: 10),

              //Product Price
              TextField(
                controller: ctrl.productPriceCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Product Price'),
                    hintText: 'Enter your Product Price'),
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                      child: DropDownBtn(
                    items: ['Cate1', 'Cate2', 'Cate3', 'Cate4'],
                    selectedItemText: 'Category',
                    onSelected: (SelectedValue) {
                      ctrl.category = SelectedValue ?? 'general';
                    },
                  )),
                  Flexible(
                      child: DropDownBtn(
                    items: ['Brand1', 'Brand2', 'Brand3', 'Brand4'],
                    selectedItemText: 'Brand',
                    onSelected: (SelectedValue) {
                      ctrl.brand = SelectedValue ?? 'un brand';
                    },
                  )),
                ],
              ),
              SizedBox(height: 10),
              Text('Offer Product ?'),
              DropDownBtn(
                items: ['True', 'False'],
                selectedItemText: 'Offer ?',
                onSelected: (SelectedValue) {
                  ctrl.offer = bool.tryParse(SelectedValue ?? 'false') ?? false;
                },
              ),
               SizedBox(height: 10),
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: (){
                 ctrl.addProduct(); 
                }, child: Text("Add Product"))
            ],
          ),
        ),
      ),
    );
    },);

  }
}
