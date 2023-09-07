
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final Color blackBg = const Color(0xFF1F2123);

  const CurrencyCard({super.key, required this.name, required this.code, required this.amount, required this.icon, required this.isInverted});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? blackBg : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? Colors.white : blackBg,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? Colors.white : blackBg, fontSize: 20),
                      ),
                      Text(code,
                          style: TextStyle(
                              color: isInverted ? Colors.white : blackBg,
                              fontSize: 20))
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 1.8,

                child: Transform.translate(
                  offset: Offset(-5,15),
                  child: Icon(
                    icon,
                    size: 88,
                    color: isInverted ? Colors.white : blackBg,
                  ),
                ),
              )
            ],
          ),
        ));
  }




}