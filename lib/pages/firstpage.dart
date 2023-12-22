import 'package:flutter/material.dart';
import 'package:lab05_144/food.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Food> foods = [];

  String foodValue = "";

  @override
  void initState() {
    super.initState();
    foods = Food.getFood();
  }

  List<Widget> creteRadioFood() {
    List<Widget> myFoods = [];
    for (var fd in foods) {
      var $fd;
      myFoods.add(RadioListTile(
        title: Text(fd.thFood),
        subtitle: Text(fd.enFood),
        secondary: Text("${fd.price} บาท"),
        value: fd.value,
        groupValue: foodValue,
        onChanged: (value) {
          setState(() {
            foodValue = value!;
          });
        },
      ));
    }
    return myFoods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Food 144"),
          backgroundColor: Color.fromARGB(255, 112, 114, 255),
        ),
        body: Column(
          children: [
            const Text("เลือกเมนูอาหาร"),
            Column(
              children: creteRadioFood(),
            ),
            Text(
              foodValue,
              style: const TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 0, 255, 34)),
            )
          ],
        ));
  }
}
