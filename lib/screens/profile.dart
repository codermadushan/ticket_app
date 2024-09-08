import 'package:flutter/material.dart';

import '../core/res/media_res.dart';
import '../core/res/style_res.dart';
import '../core/res/color_res.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              //
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 86,
                    height: 86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(MediaRes.logo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //
                  const SizedBox(width: 10),

                  //
                  SizedBox(
                    height: 86,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Book Tickets',
                          style: StyleRes.headLineStyle1,
                        ),

                        //
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: ColorRes.tabBarBgColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  color: ColorRes.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.shield,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),

                              //
                              const SizedBox(width: 5),

                              const Text(
                                'Premium status',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  //
                  Text(
                    'Edit',
                    style: StyleRes.textStyle.copyWith(color: Colors.blue),
                  ),
                ],
              ),

              const Divider(height: 40),

              //
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: ColorRes.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.lightbulb_outline),
                        ),

                        //
                        const SizedBox(width: 12),

                        //
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You'v got a new award",
                              style: StyleRes.textStyle
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "You have 95 flights in a year",
                              style: StyleRes.textStyle.copyWith(
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //
                  Positioned(
                    top: -40,
                    right: -45,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 18,
                          color: ColorRes.buttonBlueColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //
              const SizedBox(height: 20),

              //
              const Text(
                'Accumulated miles',
                style: StyleRes.headLineStyle2,
              ),

              //
              const SizedBox(height: 20),

              //
              const SizedBox(
                width: double.maxFinite,
                child: Text(
                  '192802',
                  textAlign: TextAlign.center,
                  style: StyleRes.headLineStyle1,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles accured',
                    style: StyleRes.headLineStyle3.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text(
                    '16th July',
                    style: StyleRes.headLineStyle3.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),

              //
              const Divider(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '23 042',
                        style: StyleRes.headLineStyle3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Miles',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),

                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Airline CO',
                        style: StyleRes.headLineStyle3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Received from',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '23 042',
                        style: StyleRes.headLineStyle3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Miles',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),

                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Airline CO',
                        style: StyleRes.headLineStyle3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Received from',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '23 042',
                        style: StyleRes.headLineStyle3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Miles',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),

                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Airline CO',
                        style: StyleRes.headLineStyle3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Received from',
                        style: StyleRes.headLineStyle4.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.maxFinite,
                child: Text(
                  'How to get more miles',
                  textAlign: TextAlign.center,
                  style: StyleRes.textStyle.copyWith(
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
