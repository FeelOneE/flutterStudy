import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';
import 'package:toonflix/widget/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818), // color picker 사용 가능함
            body: SingleChildScrollView(
              child: Padding(
                  // 화면 전체에 패딩을 주기위한 위젯
                  padding: const EdgeInsets.symmetric(horizontal: 20), // 패딩 값
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text('Hey, Selena',
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
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Total Balance",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "\$5 194 482",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                              text: 'Transfer',
                              bgColor: Colors.amber,
                              textColor: Colors.black),
                          Button(
                              text: 'Request',
                              bgColor: const Color(0xFF1F2123),
                              textColor: Colors.white.withOpacity(0.8)),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
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
                      const SizedBox(
                        height: 20,
                      ),
                      const CurrencyCard(
                          name: "Euro",
                          code: "EUR",
                          amount: "6 428",
                          icon: Icons.euro_rounded,
                          isInverted: true,
                          order: 1,
                      ),
                      const CurrencyCard(
                          name: "Bitcoin",
                          code: "BTC",
                          amount: "932",
                          icon: Icons.currency_bitcoin,
                          isInverted: false,
                          order: 2,
                      ),
                      const CurrencyCard(
                          name: "Dollar",
                          code: "USD",
                          amount: "91 723",
                          icon: Icons.money_rounded,
                          isInverted: true,
                          order: 3,
                      )
                    ],
                  )),
            )));
  }
}
