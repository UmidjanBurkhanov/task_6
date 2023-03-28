import 'package:flutter/material.dart';
import 'menu_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Мои карты",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage(), )),
            child: Text(
              "Добавить",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: Color(0xff7059F6),

            ),
          ),
        ],
      ),
    );
  }
}
