import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFF181818), // color picker 사용 가능함
            body: Padding(
                // 화면 전체에 패딩을 주기위한 위젯
                padding: EdgeInsets.symmetric(horizontal: 20), // 패딩 값
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Hey, Selena',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800)),
                            Text('Welcome back',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 18))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$5 194 482",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                            text: 'Transfer',
                            bgColor: Colors.amber,
                            textColor: Colors.black),
                        Button(
                            text: 'Request',
                            bgColor: Color(0xFF1F2123),
                            textColor: Colors.white.withOpacity(0.8)),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 36),
                        ),
                        Text(
                          "view all",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF1F2123),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Euro',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '6 428',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text('EUR',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ))));
  }
}
