import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<int> _list1 = [];

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
          children: List.generate(
            _list1.length,
            (index) {
              return cartPage(
                "assets/img.png",
                "276 354 834.34  ",
                "Anorbank",
                "7828 24** **** 4566",
                () {
                  setState(() {
                    _list1.removeAt(index);
                  });
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _list1.add(0);
            });
          },
          child: Text("Qo'shish"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
      ),
    );
  }

  Widget cartPage(
    String img_card,
    String money_values,
    String bank_name,
    String card_number,
    Function() click,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 100,
        color: Colors.white,
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
          trailing: PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            // Callback that sets the selected popup menu item.
            onSelected: (item) {
              if (item == 0) {
                Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              }
              if (item == 2) {
                click();
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 0,
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset("assets/item_1.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Редактировать")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 1,
                onTap: () {
                  print("fjn");
                  Fluttertoast.showToast(
                      msg: "Kartani Bloklash",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16);
                },
                child: Row(
                  children: [
                    Image.asset("assets/item_2.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Заблокировать карту")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    Image.asset("assets/item_3.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Удалить карту")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
