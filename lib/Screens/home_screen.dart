import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_concept_ui_kit/Screens/auction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _position = 0.0;
  bool _isCompleted = false;

  bool _visible = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startFlashing();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startFlashing() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (Timer timer) {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAF0),
      body: ListView(
        children: [
          SizedBox(
            height: 140.0,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, bottom: 8.0),
                    child: Row(
                      children: [
                        AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF6A0E1A),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          "START HERE",
                          style: TextStyle(
                              color: Color(0xFF6A0E1A),
                              fontSize: 14.0,
                              fontFamily: "poppinsSemiBold"),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset("assets/images/png/home_vector.png"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: SvgPicture.asset(
                "assets/images/svg/home_text.svg",
                width: MediaQuery.of(context).size.width,
              )),
          const SizedBox(
            height: 34.0,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: RichText(
                text: const TextSpan(
                  text:
                      'Digital marketplace for crypto collections and non-fungible tokens ',
                  style: TextStyle(
                      color: Color(0xFF606060),
                      fontSize: 14,
                      fontFamily: "poppinsRegular"),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'NFTS.',
                      style: TextStyle(
                          fontFamily: "poppinsMedium",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    top: 25,
                    left: 0.0,
                    child: Image.asset(
                      "assets/images/png/tick_vector.png",
                      width: MediaQuery.of(context).size.width * 0.5,
                      fit: BoxFit.fill,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      _isCompleted ? 'Get Started!' : 'Swipe to get started',
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: "poppinsMedium",
                        color: Color(0xFFB3B3B3),
                      ),
                    ),
                  ),
                  Positioned(
                    left: _position + 8.0,
                    top: 6,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          _position += details.delta.dx;
                          if (_position > (MediaQuery.of(context).size.width - 114)) {
                            setState(() {
                              _position = (MediaQuery.of(context).size.width - 114);
                              _isCompleted = true;
                            });
                          }else {
                            setState(() {
                              _position += details.delta.dx;
                              _isCompleted = false;
                            });
                          }
                        });
                      },
                      onPanEnd: (details) {
                        if (!_isCompleted) {
                          setState(() {
                            _position = 0;
                          });
                        } else if (_isCompleted){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuctionScreen()));
                        }
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFBC3748),
                            border: Border.all(width: 1.8, color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(1.8, 1.8),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Center(
                          child: SvgPicture.asset("assets/images/svg/forwardIcon.svg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 24,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
              ),
              const SizedBox(width: 5.0,),
              Container(
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black
                ),
              ),
              const SizedBox(width: 5.0,),
              Container(
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
