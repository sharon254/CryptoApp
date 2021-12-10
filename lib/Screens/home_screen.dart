import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Transactions',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Notifications',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                height: 100,
                color: Colors.white,
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ksh.16,722.68',
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ksh.4278899',
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0D8985)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  itemBuilder: (context, i) {
                    return Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF0D8985),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/moneymaker.png'))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Money Transfer",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [

                    Text(
                      'Assets',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                      Expanded(
                        child: Container(),
                      ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sort by Value',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 400,
                margin: EdgeInsets.only(right: 8),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(left: 16),
                  itemBuilder: (context, i) {
                    return Container(
                      height: 90,
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white12,
                              blurRadius: 10,
                              spreadRadius: 8,
                              offset: Offset(8.0, 8.0),
                            )
                          ],
                          color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/ethereum.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Ethereum',
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,

                                    ),
                                    Text('0.73 eth')
                                  ],
                                ),
                                Expanded(
                                  child: Row(),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Ethereum',
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,

                                    ),
                                    Text('0.73 eth')
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF0D8985),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: ('search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.grey,
            ),
            label: ('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.save,
              color: Colors.grey,
            ),
            label: ('Saved'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: ('Settings'),
          ),
        ],
      ),
    );
  }
}
