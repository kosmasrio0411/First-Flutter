import 'package:flutter/material.dart';
import 'package:flutter_application_1/datas/icons.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/svg.dart';


class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32,
      ),
      child: SizedBox(
        height: 200,
        child: GridView.count(crossAxisCount: 4, mainAxisSpacing: 2, children: [
          ...menuIcons.map(
            (icon) => Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: icon.icon == 'goclub' ? Colors.white : icon.color,
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    'assets/icons/${icon.icon}.svg',
                    color: icon.icon == 'goclub'
                        ? icon.color
                        : icon.icon == 'other'
                            ? dark2
                            : Colors.white,
                    width: 24,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  icon.title,
                  style: regular12_5.copyWith(color: dark2),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}


