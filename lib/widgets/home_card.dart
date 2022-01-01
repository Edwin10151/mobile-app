import 'package:flutter/material.dart';
import 'package:peachai/constants.dart';
import 'package:peachai/models/Listing.dart';
import 'package:peachai/widgets/filled_outline_button.dart';

class HomeCard extends StatelessWidget {
  final Listing listing;
  final Function() press;

  const HomeCard({Key? key, required this.listing, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(
            right: 10,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColorLight,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ], //18
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  listing.image,
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      listing.description,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      listing.address,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    buildInfoRow(5, const Icon(Icons.people),
                        text: listing.applicants.toString()),
                    FillOutlineButton(
                      press: () {},
                      text: "See my Listing",
                      isFilled: true,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Row buildInfoRow(double defaultSize, Icon icon, {text}) {
    return Row(
      children: <Widget>[
        icon,
        SizedBox(width: defaultSize), // 10
        Text(
          "$text Applied",
          style: const TextStyle(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
