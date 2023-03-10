import 'package:crypto_wallet/screends/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //const BottomNav({Key? key}) : super(key: key);
  final _bucket = PageStorageBucket();

  Widget currentScreen = const HomeScreem();

  int indexScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: _bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: const Color(0xff261863),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
          padding: const EdgeInsets.all(10),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      indexScreen = 0;
                    },
                  );
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/home.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xffD975BB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 1;
                  });
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/wallet.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Carteira",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 38,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 2;
                  });
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/market.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Mercado",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      indexScreen = 3;
                    },
                  );
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/setting.png"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Ajustes",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xff55389B),
            borderRadius: BorderRadius.circular(38),
          ),
          child: const Icon(Icons.swap_horiz_outlined,
              size: 40, color: Colors.white),
        ),
      ),
    );
  }
}
