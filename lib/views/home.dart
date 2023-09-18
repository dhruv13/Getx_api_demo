import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_data_api/controller/productcontroller.dart';
import 'package:new_data_api/views/view_screen.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx_Demo_API_Calling"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() {
            if (productController.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: productController.productList[0].data.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index.isEven) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: ListTile(
                          leading: Image.network(productController.productList[0].data[index].images['jpg']!.imageUrl),
                          title: Text(productController.productList[0].data[index].title),
                          subtitle: Column(
                            children: [
                              Text(
                                productController
                                    .productList[0].data[index].synopsis,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          onTap: () {
                            Get.to(viewScreen(
                              image: productController.productList[0]
                                  .data[index].images['jpg']!.imageUrl,
                              title: productController
                                  .productList[0].data[index].title,
                              description: productController
                                  .productList[0].data[index].synopsis,
                              video:
                                  '${productController.productList[0].data[index].trailer.youtubeId}',
                            ));
                          },
                        ),
                      );
                    } else {
                      // For even indices, return two rows in a Column
                      return Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: ListTile(
                          trailing: Image.network(productController
                              .productList[0]
                              .data[index]
                              .images['jpg']!
                              .imageUrl),
                          //trailing: Image.network(imageNetwork),
                          title: Text(productController
                              .productList[0].data[index].title),
                          subtitle: Column(
                            children: [
                              Text(
                                productController
                                    .productList[0].data[index].synopsis,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          onTap: () {
                            Get.to(viewScreen(
                              image: productController.productList[0]
                                  .data[index].images['jpg']!.imageUrl,
                              title: productController
                                  .productList[0].data[index].title,
                              description: productController
                                  .productList[0].data[index].synopsis,
                              video:
                                  '${productController.productList[0].data[index].trailer.youtubeId}',
                            ));
                          },
                        ),
                      );
                    }
                  },
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
