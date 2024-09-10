import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:advanced_search/advanced_search.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Fashionrev extends StatefulWidget {
  const Fashionrev({super.key});

  @override
  State<Fashionrev> createState() => _FashionrevState();
}

class _FashionrevState extends State<Fashionrev> {
  Detailscontroller contr = Get.put(Detailscontroller());
  final List<String> searchableList = [
    "H&M",
    "Myntra",
    "Jack and Jones",
    "Puma",
    "Nike",
    "Converse",
    "Jockey",
    "Adidas"
  ];
  List<String> bnames = [
    'b1.png',
    'b2.png',
    'b3.png',
    'b4.png',
    'b5.png',
    'b6.png',
    'b7.png',
    'b8.png'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("F7F5F2"),
      appBar: AppBar(
        backgroundColor: HexColor("F7F5F2"),
        actions: <Widget>[
          SizedBox(
            width: width * 0.3,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(contr.avatar.value),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: HexColor("#e8bcf0"),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
          ),
        ],
      ),
      body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
            return ListView(
              children: <Widget>[
                SizedBox(
                  height: cts.maxHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    child: AdvancedSearch(
                      searchItems: searchableList,
                      maxElementsToDisplay: 10,
                      singleItemHeight: 50,
                      borderColor: Colors.black,
                      minLettersForSearch: 3,
                      selectedTextColor: HexColor("DB66F0"),
                      fontSize: 14,
                      borderRadius: 10.0,
                      hintText: 'Search for fashion brands..',
                      cursorColor: Colors.purple,
                      autoCorrect: true,
                      focusedBorderColor: Colors.black,
                      searchResultsBgColor: Colors.white,
                      disabledBorderColor: Colors.white,
                      enabledBorderColor: Colors.black,
                      enabled: true,
                      caseSensitive: false,
                      inputTextFieldBgColor: Colors.white,
                      clearSearchEnabled: true,
                      itemsShownAtStart: 2,
                      searchMode: SearchMode.CONTAINS,
                      showListOfResults: true,
                      unSelectedTextColor: Colors.black54,
                      verticalPadding: 10,
                      horizontalPadding: 20,
                      hideHintOnTextInputFocus: true,
                      hintTextColor: Colors.grey,
                      onItemTap: (index, value) {
                        print("selected item index is $index");
                      },
                      onSearchClear: () {
                        print("Cleared Search");
                      },
                      onSubmitted: (searchText, listOfResults) {
                        print("Submitted: " + searchText);
                      },
                      onEditingProgress: (searchText, listOfResults) {
                        print("TextEdited: " + searchText);
                        print("LENGTH: " + listOfResults.length.toString());
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child: Container(
                    child: Expanded(
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/fashion/men.png",
                            height: 80,
                            width: 80,
                          ),
                          SizedBox(width: cts.maxWidth * 0.05),
                          Image.asset("assets/fashion/women.png",
                              height: 80, width: 80),
                          SizedBox(width: cts.maxWidth * 0.05),
                          Image.asset("assets/fashion/acc.png",
                              height: 80, width: 80),
                          SizedBox(width: cts.maxWidth * 0.05),
                          Image.asset("assets/fashion/footwear.png",
                              height: 80, width: 70),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 20),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: cts.maxWidth * 0.01,
                      ),
                      Text(
                        "Men",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"), fontSize: 13),
                      ),
                      SizedBox(width: cts.maxWidth * 0.15),
                      Text(
                        "Women",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"), fontSize: 13),
                      ),
                      SizedBox(width: cts.maxWidth * 0.09),
                      Text(
                        "Accessories",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"), fontSize: 13),
                      ),
                      SizedBox(
                        width: cts.maxWidth * 0.09,
                      ),
                      Text(
                        "Footwear",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"), fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recently Viewed",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: HexColor("390042"),
                        ),
                      )),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.02,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 20),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 20),
                    width: cts.maxWidth * 0.2,
                    height: cts.maxHeight * 0.1,
                    child: Image.asset("assets/brands/b1.png"),
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Stores near you",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: HexColor("390042"),
                        ),
                      )),
                ),
                Container(
                  child: GridView.count(
                    childAspectRatio: 3 / 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    padding: EdgeInsets.zero,
                    children: List.generate(bnames.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: SizedBox(
                            height: 200,
                            width: 200,
                            child:
                                Image.asset("assets/brands/" + bnames[index])),
                      );
                    }),
                  ),
                )
              ],
            );
          })),
    );
  }
}

Widget searchWidget(String text) {
  return ListTile(
    title: Text(
      text.length > 3 ? text.substring(0, 3) : text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.indigoAccent),
    ),
    subtitle: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: Colors.black26,
      ),
    ),
  );
}
