import 'package:flutter/material.dart';
import 'package:motto_help/widgets/app_text.dart';

class Complete extends StatelessWidget {
  const Complete({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/complete.png",
      "assets/images/complete2.png",
      "assets/images/complete3.png",
    ];

    return Column(
        children: List.generate(images.length, (index) {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: const Color(
                  0xffE0E0E0,
                ),
                width: 2)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(images[index]),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "Car Medic",
                  fontWeight: FontWeight.w600,
                ),
                AppText(
                  text: "19 Feb 2023",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color(0xff9B9B9B),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.27,
                  child: AppText(
                    text: "Lorem ipsum dolor sit amet huhh.",
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xff9B9B9B),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 33,
                      width: MediaQuery.of(context).size.width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff0FD60F),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: AppText(
                          text: "Complete",
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      )),
                  Row(
                    children: [
                      AppText(
                        text: "Service fee ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666666),
                      ),
                      AppText(
                        text: "110\$",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff333333),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }));
  }
}
