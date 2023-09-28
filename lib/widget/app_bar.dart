import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  final Size preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    //Переменные для разных состояний
    final bool islogin = true;
    final bool haveNotification = false;
    final bool haveNewNotification = false;
    final bool haveQuestion = false;

    final String name = "Константин";

    return AppBar(
      elevation: 0,
      title: Flexible(
        flex: 2,
        child: TextButton(
          style: style,
          onPressed: () {
            // Обработка нажатия на кнопку слева
          },
          child: Row(
            children:
              [
               // Для неавторизованного пользователя
             islogin? Text(
                name,
                style: TextStyle(
                  color: Color(0xFF0D1320),
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ): Text(
                'Войти через Госуслуги',
                style: TextStyle(
                  color: Color(0xFF0D1320),
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
                 // Для неавторизованного пользователя
              Center(
                  child: Icon(
                Icons.arrow_forward_ios,
                size: 10,
              )),
            ]
          ),
        ),
      ),
      actions: <Widget>[
        
        IconButton(
          onPressed: () {
            // Обработка нажатия на Action 1
          },
          icon: Stack(
            children: [
              // Первая картинка (нижняя)
              SvgPicture.asset(
                  "assets/icons/message-question.svg",   ), // Замените на свой путь к картинке

              // Вторая картинка (верхняя), наложенная поверх первой
              Positioned(
                top: 0, // Вертикальное расположение в пикселях сверху
                right: 0, // Горизонтальное расположение в пикселях слева
                child: haveQuestion
                    ? SvgPicture.asset("assets/icons/Count_Badge.svg")
                    : Container(),
              ),
            ],
          ),
        ),
        if (islogin)
          IgnorePointer(
            ignoring: !haveNotification,
            child:
          IconButton(
            onPressed: () {
              // Обработка нажатия на Action 1
            },
            icon: Stack(
              children: [
                // Первая картинка (нижняя)
                SvgPicture.asset(
                    "assets/icons/notification.svg", colorFilter: !haveNotification? ColorFilter.mode(Colors.grey  , BlendMode.srcIn):null), // Замените на свой путь к картинке

                // Вторая картинка (верхняя), наложенная поверх первой
                Positioned(
                  top: 0, // Вертикальное расположение в пикселях сверху
                  right: 0, // Горизонтальное расположение в пикселях слева
                  child:haveNotification
                      ? SvgPicture.asset("assets/icons/Count_Badge.svg")
                      : Container(),
                ),
              ],
            ),
          ),),
      ],
    );
  }
}
