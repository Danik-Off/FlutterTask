import 'package:flutter/material.dart';
import 'package:task/widget/app_bar.dart';
import 'package:task/widget/list_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItemObj> items =[
      ListItemObj("Осуществление индивидуальной предпринимательской деятельности", "assets/Coin.svg"),
      ListItemObj("Осуществление индивидуальной предпринимательской деятельности", "assets/Coin.svg"),
      ListItemObj("Осуществление индивидуальной предпринимательской деятельности", "assets/Coin.svg"),
      ListItemObj("Осуществление индивидуальной предпринимательской деятельности", "assets/Coin.svg"),
      ];
  
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Витрина направлений',
              style: TextStyle(
                color: Color(0xFF272727),
                fontSize: 26,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.05,
              
              ),
            ),
            for(var item in items)
              ListItem(item)
          ],
        ),
      ),
    );
  }
}
