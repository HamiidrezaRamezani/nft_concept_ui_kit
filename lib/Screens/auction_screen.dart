import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_concept_ui_kit/Screens/auction_single_screen.dart';

class AuctionScreen extends StatefulWidget {
  const AuctionScreen({super.key});

  @override
  State<AuctionScreen> createState() => _AuctionScreenState();
}

class _AuctionScreenState extends State<AuctionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 36.0,
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset(
                      "assets/images/svg/back.svg",
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                ),
                const Align(
                  child: Text("Auction", style: TextStyle(
                    color: Colors.black,
                    fontFamily: "poppinsSemiBold",
                    fontSize: 16.0
                  ),),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                color: Colors.transparent
              ),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("assets/images/jpg/user_one.jpg", fit: BoxFit.fill,)),
            ),
          ),
          const SizedBox(height: 18.0,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuctionSingleScreen()));
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/images/png/logo.png", width: 50.0, fit: BoxFit.fill,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text("Axuki #5329", style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontFamily: "poppinsSemiBold",

                                  ),),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("@TeamAzuki", style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    fontFamily: "poppinsMedium",

                                  ),),
                                  const SizedBox(width: 4.0,),
                                  Image.asset("assets/images/png/tick_icon.png", height: 18.0,width: 18.0, fit: BoxFit.fill,),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert
                )
              ],
            ),
          ),
          const SizedBox(height: 18.0,),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: RichText(
                text: const TextSpan(
                  text:
                  'Azuki starts with a collection of 10,000 avatars that give you membership access to The Garden: a corner of the internet ... ',
                  style: TextStyle(
                      color: Color(0xFF606060),
                      fontSize: 14,
                      fontFamily: "poppinsRegular"),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                          fontFamily: "poppinsMedium",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBC3748)),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 52.0,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 54.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(width: 1.5, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(
                          1.8, 1.8
                        ),
                        blurRadius: 0.0, spreadRadius: 0.0
                      )
                    ]
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Last bid", style: TextStyle(fontFamily: "poppinsRegular", fontSize: 12.0, color: Color(0xFF5C5C5C)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/png/etrium_icon.png", height: 28.0,),
                            const SizedBox(width: 5.0,),
                            const Text("9.09", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Color(0xFF5C5C5C)),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 54.0,
                  width: MediaQuery.of(context).size.width - 100 - 48 - 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(width: 1.5, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(
                          1.8, 1.8
                        ),
                        blurRadius: 0.0, spreadRadius: 0.0
                      )
                    ]
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Audition ending in", style: TextStyle(fontFamily: "poppinsRegular", fontSize: 12.0, color: Color(0xFF5C5C5C)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CountdownTimer()
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 52.0,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Container(
              height: 54.0,
              width: MediaQuery.of(context).size.width - 100 - 48 - 8,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFCC81),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(width: 1.5, color: Colors.black),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(
                            1.8, 1.8
                        ),
                        blurRadius: 0.0, spreadRadius: 0.0
                    )
                  ]
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Place Bid", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Colors.black),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Duration duration = const Duration(
    days: 3,
    hours: 2,
    minutes: 8,
    seconds: 30,
  );
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (duration.inSeconds > 0) {
          duration = duration - const Duration(seconds: 1);
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String formatDuration(Duration d) {
    String days = d.inDays.toString().padLeft(2, '0');
    String hours = (d.inHours % 24).toString().padLeft(2, '0');
    String minutes = (d.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (d.inSeconds % 60).toString().padLeft(2, '0');
    return "${days}d : ${hours}h : ${minutes}m : ${seconds}s";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formatDuration(duration),
          style: const TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Color(0xFF5C5C5C)),
        ),
      ],
    );
  }
}
