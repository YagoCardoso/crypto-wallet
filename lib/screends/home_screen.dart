import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/controller_home_page.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  //const HomeScreem({Key? key}) : super(key: key);
  final List getData = [
    {"image": "images/reveiver.png", "name": "Receber"},
    {"image": "images/sender.png", "name": "Enviar"},
    {"image": "images/swap.png", "name": "Trocar"},
  ];

  List<Color> getColors = const [
    Color(0xffD975BB),
    Color(0xff7056B2),
    Color(0xffBEBFF0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Olá yago",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                color: Color(0xffD975BB),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          "Bem-vindo de volta",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 32,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF0F7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.notification_important_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff261863),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "2.70% Hoje",
                            style: GoogleFonts.lato(
                                color: const Color(0xffD975BB), fontSize: 16),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          _money(),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: -20,
                    right: 3,
                    bottom: -28,
                    child: Image(
                      height: 190,
                      image: AssetImage("images/money.png"),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    bottom: -10,
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: const BoxDecoration(
                          color: Color(0xffD975BB),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 6),
                                color: Color(0xffB971A3),
                                blurRadius: 6.2)
                          ]),
                      child:
                          const Icon(Icons.add, size: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Ações",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getData.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.only(bottom: 12),
                            height: 155,
                            width: 135,
                            decoration: BoxDecoration(
                                color: getColors[index],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image(
                                //   image: AssetImage(getData[index]["image"]),
                                // ),
                                Text(
                                  getData[index]["name"],
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.arrow_forward_sharp,
                                    color: Colors.white),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 20,
                            child: Image(
                              image: AssetImage(getData[index]["image"]),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Principais Movimentadores",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 88,
                      width: 145,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8FA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "+34.98%",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "BTC \$21.58",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image(
                                  image: AssetImage("images/Vector1.png")))
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 88,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8FA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "+66.25%",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "BTC \$35.16",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image(
                                  image: AssetImage("images/Vector2.png")))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _money() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (context) {
          return Text(
            context.saldo,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 32),
          );
        });
  }
}
