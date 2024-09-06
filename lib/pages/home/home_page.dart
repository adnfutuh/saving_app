import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:saving_app/style/colors.dart';
import 'package:saving_app/style/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 35,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: kBody1.copyWith(color: kMatterhornBlack),
                          ),
                          Text(
                            'Rizki Adnan Futuh',
                            style: kHeading6.copyWith(color: kMatterhornBlack),
                          ),
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/user-img.png'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: kGrey,
                              blurRadius: 5,
                              offset: Offset.fromDirection(2),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    constraints: const BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg-container.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 5,
                          offset: Offset.fromDirection(2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My savings',
                          style: kSubtitle2.copyWith(color: kWhite),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Rp. 20.360.000',
                          style: kHeading5.copyWith(color: kWhite),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhite,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Rp. 20.360.000 / Rp. 100.000.000',
                          style: kCaption.copyWith(color: kWhite),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      _transactionButton(
                        'assets/icons/save.png',
                        'Save Money',
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      _transactionButton(
                        'assets/icons/pay.png',
                        'Pay',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: DraggableScrollableSheet(
                builder: (context, scrollController) {
                  return Container(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 21,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                      color: kWhite,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 14),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Transactions History',
                                    style: kHeading5.copyWith(
                                      color: kLuckyBlue,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 31,
                                ),
                                _transactionList()
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 4,
                            width: 49,
                            color: kEgyptianBlue.withOpacity(0.1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _transactionList() {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: CircleAvatar(
            backgroundColor: kTreeGreen.withOpacity(0.2),
            child: const Image(
              image: AssetImage(
                'assets/icons/triangle-up.png',
              ),
              width: 14,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Success!',
              style: kBody1.copyWith(
                color: kLuckyBlue,
              ),
            ),
            Text(
              '19 February 2024, 03:25 PM',
              style: kCaption.copyWith(
                color: kLightGray,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '+ 100.000',
          style: kBody1.copyWith(color: kLuckyBlue),
        )
      ],
    );
  }

  Widget _transactionButton(String icon, String text) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 60,
        ),
        decoration: const BoxDecoration(
          color: kNightBlack,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: kBody1.copyWith(color: kWhite),
            )
          ],
        ),
      ),
    );
  }
}
