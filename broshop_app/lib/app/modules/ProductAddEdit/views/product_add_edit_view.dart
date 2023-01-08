import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_add_edit_controller.dart';
import 'local.widget/index.dart';

class ProductAddEditView extends GetView<ProductAddEditController> {
  const ProductAddEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductAddEditView'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Name(),
              StrapColor(),
              ImageUrl(),
              Price(),
              Highlight(),
              Status(),
              SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
