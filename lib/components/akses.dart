import 'package:flutter/material.dart';
import 'package:flutter_application_1/datas/icons.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/svg.dart';


class Akses extends StatelessWidget {
  const Akses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top:15, right: 15),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            'Akses cepat',
            style: bold18.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 18, 
          ),
          Container(
             decoration: BoxDecoration(
              
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0xFFE8E8E8)
            )
          ),
            child: Column(
              children: [
                ...['Pintu masuk motor, Bagus Land', 'Pintu keluar motor, Bagus Land']
                  .map((text) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                color: green2,
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset(
                              'assets/icons/goride.svg',
                              color: Colors.white,
                              width: 24,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              text,
                              style: regular14.copyWith(color: dark1),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          SvgPicture.asset(
                            'assets/icons/left.svg',
                            height: 24,
                            color: dark1,
                          )
                        ]),
                      ))
            ]),
          ),
        ],
      ),
    );
  }
}