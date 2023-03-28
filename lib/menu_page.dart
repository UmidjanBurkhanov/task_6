import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List list = [];

  Widget cartPage(
    String img_card,
    String money_values,
    String bank_name,
    String card_number,
    VoidCallback click,
  ) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 100,
        color: Colors.white,
        child: Expanded(
          child: ListTile(
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(money_values),
                    Text(bank_name),
                  ],
                ),
                Text(card_number),
              ],
            ),
            onTap: click,
            leading: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(img_card),
                ),
              ),
            ),
            trailing: Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kartalar",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            cartPage("assets/img.png", "276 354 834.34  ", "Anorbank",
                "7828 24** **** 4566", () {
              print("eh");

            }),
            cartPage("assets/img.png", "276 354 834.34  ", "Anorbank",
                "7828 24** **** 4566", () {
                  print("eh");

                }),
            cartPage("assets/img.png", "276 354 834.34  ", "Anorbank",
                "7828 24** **** 4566", () {
                  print("eh");

                }),
            cartPage("assets/img.png", "276 354 834.34  ", "Anorbank",
                "7828 24** **** 4566", () {
                  print("eh");

                }),
            cartPage("assets/img.png", "276 354 834.34  ", "Anorbank",
                "7828 24** **** 4566", () {
                  print("eh");

                }),
            cartPage("assets/img.png", "276 354 834.34  ", "Anorbank",
                "7828 24** **** 4566", () {
                  print("eh");

                }),
            ElevatedButton(onPressed: (){}, child: Text("Karta Qo'shish")),

          ],
        ),
      ),
    );
  }
}
