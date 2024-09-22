import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner_task/controller/home_screen_controller.dart';
import 'package:scanner_task/view/home_screen/widget/recent_item_card.dart';

class RecentlyAddedItemsScreen extends StatelessWidget {
  const RecentlyAddedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recently added"),
      ),
      body: Consumer<HomeScreenController>(
        builder: (context, screenProvider, child) => screenProvider.bagList.isNotEmpty
            ? ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                shrinkWrap: true,
                itemCount: screenProvider.bagList.length,
                itemBuilder: (context, index) => RecentItemCard(
                  bagDetails: screenProvider.bagList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
              )
            : Center(
                child: Text("No Data Found"),
              ),
      ),
    );
  }
}
