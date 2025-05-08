import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_filter_wiget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(14)),
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 55.0, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_rounded),
                      Gap(10),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 23,
                          child: Icon(
                            Icons.badge_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Gap(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Calicut Dealers",
                            style: GoogleFonts.roboto(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("Car hub, User Car, Best Car ... More",
                              style: GoogleFonts.roboto(
                                  fontSize: 11, fontWeight: FontWeight.w300))
                        ],
                      )
                    ],
                  ),
                  Gap(15),
                  CupertinoSearchTextField(
                    backgroundColor: Colors.grey[200],
                    placeholder: "Find More",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                CustomFilterWidget(
                  isSelected: true,
                  leadingIcon: Icons.filter_alt_sharp,
                  headingText: "Filter",
                ),
                CustomFilterWidget(
                    isSelected: false,
                    leadingIcon: Icons.sort,
                    headingText: "Sort"),
                CustomFilterWidget(
                    isSelected: false,
                    leadingIcon: Icons.code_off_sharp,
                    headingText: "Price Range"),
                CustomFilterWidget(
                    isSelected: false,
                    leadingIcon: Icons.add_chart_outlined,
                    headingText: "Model")
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  childAspectRatio: .70),
              itemBuilder: (context, index) {
                return customGridView();
              },
            ),
          )
        ],
      ),
    );
  }

  Container customGridView() {
    return Container(
      color: Colors.lightBlue[100],
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(color: Colors.red[100]),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Text("4.5")
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          premiumVarantOfferBox(),
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.grey[300],
                            child: Icon(Icons.heart_broken),
                          )
                        ],
                      ),
                      Gap(10)
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Motor hector plus",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                Gap(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customContainer(text: "17 km"),
                    Gap(5),
                    customContainer(text: "Petrol"),
                    Gap(5),
                    customContainer(text: "automatci")
                  ],
                ),
                Gap(2),
                Row(
                  children: [
                    Text(
                      "₹14.36 Lakh",
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Gap(6),
                    Text(
                      "₹18,30 Lakh",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container premiumVarantOfferBox() {
    return Container(
      height: 30,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(19)),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.star_border,
              color: Colors.red,
            ),
            Text("Premium variant"),
          ],
        ),
      ),
    );
  }

  Container customContainer({required String text}) {
    return Container(
      height: 18,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(9)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
