import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:saving_app/style/colors.dart';
import 'package:saving_app/style/text_style.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 25),
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
                image: const DecorationImage(
                    image: AssetImage('assets/images/bg-container-2.png'),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: kGrey,
                    blurRadius: 5,
                    offset: Offset.fromDirection(2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'My Portofolio',
                    style: kHeading6.copyWith(
                      color: kWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Saving Value',
                    style: kSubtitle2.copyWith(
                      color: kWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp 22.410.000',
                    style: kHeading5.copyWith(color: kWhite),
                  ),
                ],
              ),
            ),
            _portofolioCardList(
              'assets/icons/pension.png',
              'Pension Saving Funds',
              0.3,
              'Rp. 20.360.000 / Rp. 100.000.000',
              'Last Saving 28 April 2024',
            ),
            _portofolioCardList(
              'assets/icons/camera.png',
              'Camera',
              0.5,
              'Rp. 5.000.000 / Rp. 10.000.000',
              'Last Saving 18 April 2024',
            ),
            _portofolioCardList(
              'assets/icons/camera.png',
              'Camera',
              0.5,
              'Rp. 5.000.000 / Rp. 10.000.000',
              'Last Saving 18 April 2024',
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kWhite,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  elevation: 4,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      size: 13,
                      color: kLuckyBlue,
                    ),
                    Text(
                      'add portofolio',
                      style: kButton2.copyWith(
                        color: kLuckyBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _portofolioCardList(
      String icon, String title, double percent, String amount, String time) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
      padding: const EdgeInsets.fromLTRB(15, 19, 15, 14),
      constraints: const BoxConstraints.expand(height: 130),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 5,
            offset: Offset.fromDirection(1, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundColor: kTropicalBlue.withOpacity(0.5),
              child: Image(
                image: AssetImage(
                  icon,
                ),
                width: 24,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kSubtitle1,
                ),
                const SizedBox(
                  height: 12,
                ),
                LinearPercentIndicator(
                  lineHeight: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  percent: percent,
                  progressColor: kBlueRibbon,
                  backgroundColor: kGrey.withOpacity(0.3),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  amount,
                  style: kBody2.copyWith(color: kGrey),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    time,
                    style: kCaption.copyWith(color: kLightGray),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
