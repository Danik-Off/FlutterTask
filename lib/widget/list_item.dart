import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.item, {Key? key}) : super(key: key);
  final ListItemObj item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:16.0),
      
      width: 312,
      height: 116,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
             padding: EdgeInsets.all(16),
              height: 300,
              child: Center(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    color: Color(0xFF0D1320),
                    
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 130,
              height: 300,
              decoration: const ShapeDecoration(
                color: Color(0xFFEAECF0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                    bottomLeft: Radius.circular(150),
                  ),
                ),
              ),
              child: Center(child: SvgPicture.asset(item.imgUrl)),
            ),
          )
        ],
      ),
    );
  }
}

class ListItemObj {
  String title;
  String imgUrl;
  ListItemObj(this.title, this.imgUrl);
}
