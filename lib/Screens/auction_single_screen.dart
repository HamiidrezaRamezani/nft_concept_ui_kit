import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuctionSingleScreen extends StatefulWidget {
  const AuctionSingleScreen({super.key});

  @override
  State<AuctionSingleScreen> createState() => _AuctionSingleScreenState();
}

class _AuctionSingleScreenState extends State<AuctionSingleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 16.0,),
          SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(21.0)),
                            child: Image.asset("assets/images/jpg/cover_auction.jpg", fit: BoxFit.fill,))),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 64.0,
                    width: 64.0,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
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
                    child: Image.asset("assets/images/png/logo.png",),
                  )
                )
              ],
            ),
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("AZUKI", style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontFamily: "poppinsSemiBold",

              ),),
              const SizedBox(width: 4.0,),
              Image.asset("assets/images/png/tick_icon.png", height: 18.0,width: 18.0, fit: BoxFit.fill,),
            ],
          ),
          const SizedBox(height: 5.0,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("By TeamAzuki", style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontFamily: "poppinsSemiBold",

              ),),
            ],
          ),
          const SizedBox(height: 14.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text("Azuki starts with a collection of 10,000 avatars that give you membership access to The Garden", style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF5E5E5E),
                  fontFamily: "poppinsRegular",
                ),
                maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 54.0,
                width: 108.0,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("10.0K", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Color(0xFF5C5C5C)),),
                        ],
                      ),
                      Text("Items", style: TextStyle(fontFamily: "poppinsRegular", fontSize: 12.0, color: Color(0xFF5C5C5C)),),

                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8.0,),
              Container(
                height: 54.0,
                width: 108.0,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/png/etrium_icon.png", height: 28.0,),
                          const SizedBox(width: 5.0,),
                          const Text("255.6K", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Color(0xFF5C5C5C)),),
                        ],
                      ),
                      const Text("Total Volume", style: TextStyle(fontFamily: "poppinsRegular", fontSize: 12.0, color: Color(0xFF5C5C5C)),),

                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8.0,),
              Container(
                height: 54.0,
                width: 108.0,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("5.1K", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Color(0xFF5C5C5C)),),
                        ],
                      ),
                      Text("Owners", style: TextStyle(fontFamily: "poppinsRegular", fontSize: 12.0, color: Color(0xFF5C5C5C)),),

                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0,),
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
                    Text("Make Collection Offer", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 14.0, color: Colors.black),),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: MyTabView(),
          ),
        ],
      ),
    );
  }
}


class MyTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Items'),
              Tab(text: 'Activity'),
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xFF616161),
            indicatorColor: Color(0xFFBC3748),
            labelStyle: TextStyle(
              fontFamily: "poppinsMedium"
            ),
          ),
          SizedBox(
            height: 350, // ارتفاع تب‌ها به صورت خودکار تنظیم می‌شود
            child: TabBarView(
              children: [
                GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75
                  ),
                  itemBuilder: (context, index) {
                    return Container(
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
                      child: Padding(padding: const EdgeInsets.all(8.0), child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AspectRatio(
                            aspectRatio: 1.0, // نسبت ابعاد تصویر (می‌توانید تغییر دهید)
                            child: Image.asset(
                              "assets/images/jpg/user_two.jpg",
                              fit: BoxFit.cover, // تصویر به عرض آیتم‌ها فیت می‌شود
                            ),
                          ),
                          const SizedBox(height: 6.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text:
                                  'Azuki ',
                                  style: TextStyle(
                                      color: Color(0xFF606060),
                                      fontSize: 14,
                                      fontFamily: "poppinsRegular"),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '#5329',
                                      style: TextStyle(
                                          fontFamily: "poppinsMedium",
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2F2F2F)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/png/etrium_icon.png", height: 18.0,),
                                  const SizedBox(width: 5.0,),
                                  const Text("9.09", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 12.0, color: Color(0xFF5C5C5C)),),
                                ],
                              ),
                              const Text(
                                'Ends In A Day',
                                style: TextStyle(color: Color(0xFF555555), fontFamily: "poppinsMedium", fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      ),),
                    );
                  },
                  itemCount: 2,
                  shrinkWrap: true, // اضافه شده برای هماهنگی با لیست ویو
                  physics: const AlwaysScrollableScrollPhysics(), // غیرفعال کردن اسکرول مستقل
                ),
                GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.75
                  ),
                  itemBuilder: (context, index) {
                    return Container(
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
                      child: Padding(padding: const EdgeInsets.all(8.0), child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AspectRatio(
                            aspectRatio: 1.0, // نسبت ابعاد تصویر (می‌توانید تغییر دهید)
                            child: Image.asset(
                              "assets/images/jpg/user_three.jpg",
                              fit: BoxFit.cover, // تصویر به عرض آیتم‌ها فیت می‌شود
                            ),
                          ),
                          const SizedBox(height: 6.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text:
                                  'Azuki ',
                                  style: TextStyle(
                                      color: Color(0xFF606060),
                                      fontSize: 14,
                                      fontFamily: "poppinsRegular"),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '#5332',
                                      style: TextStyle(
                                          fontFamily: "poppinsMedium",
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2F2F2F)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/png/etrium_icon.png", height: 18.0,),
                                  const SizedBox(width: 5.0,),
                                  const Text("9.09", style: TextStyle(fontFamily: "poppinsSemiBold", fontSize: 12.0, color: Color(0xFF5C5C5C)),),
                                ],
                              ),
                              const Text(
                                'Ends In A Day',
                                style: TextStyle(color: Color(0xFF555555), fontFamily: "poppinsMedium", fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      ),),
                    );
                  },
                  itemCount: 2,
                  shrinkWrap: true, // اضافه شده برای هماهنگی با لیست ویو
                  physics: const AlwaysScrollableScrollPhysics(), // غیرفعال کردن اسکرول مستقل
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

