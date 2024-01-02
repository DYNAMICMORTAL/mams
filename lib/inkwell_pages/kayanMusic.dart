import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mams/utils/app_styles.dart';
// import 'lib/inkwell_pages/coolkidsViewPage.dart';
import '../audios/kayan/coolKids.dart';
import 'coolkidsViewPage.dart';

class KayanMusic extends StatelessWidget {
  const KayanMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  },
                      child: Icon(FluentSystemIcons.ic_fluent_chevron_down_regular)),
                  const Gap(10),
                  Text("Today's Picks - KAYAN",style: Styles.headlineStyle3.copyWith(fontSize: 20),),
                ],
              ), //Navigation Bar

              Container(
                padding: const EdgeInsets.only(left: 15, right:5),
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      margin: EdgeInsets.all(8),
                      width: 175, // Adjust the width as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage('lib/assets/kayan.jpg'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kayan",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cool Kids", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("So Good", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("OH HI!", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("On My Own", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Heavy Headed", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cool Kids", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => coolKidsViewPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cool Kids", style: Styles.headlineStyle2.copyWith(fontSize: 20),),
                              Text("Kayan", style: Styles.headlineStyle5.copyWith(fontSize: 15),),
                            ],
                          ),
                          const Spacer(),
                          Text("⋮", style: Styles.headlineStyle4.copyWith(fontSize: 22),),
                        ],
                      ),
                    ),
                    const Gap(10),


                    Text("SONY ENTERTAINMENT MUSIC GROUP - Kayan Music Labels", style: Styles.headlineStyle5.copyWith(fontSize: 08),),
                  ],
                ),
              ), //Main Music Container
            ],
          ),
        ),
      ),
    );
  }
}
