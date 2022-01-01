import 'package:flutter/material.dart';
import 'package:peachai/models/Listing.dart';
import 'package:peachai/widgets/home_card.dart';

class MyListingsPage extends StatelessWidget {
  const MyListingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listingData.length,
          itemBuilder: (context, index) =>
              HomeCard(listing: listingData[index], press: () {}),
        ),
      ),
    );
  }
}
