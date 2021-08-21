import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/about_us.dart';
import 'package:flutter_application_1/views/multiple_view.dart';
import 'package:flutter_application_1/views/sales.dart';
import 'package:flutter_application_1/views/single_view.dart';
import 'package:google_fonts/google_fonts.dart';


class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20.0),
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40)),
                  child: Text('Proceed to Confirm',
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              letterSpacing: .5,
                              fontSize: 15.0))),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        )),
        // backgroundColor: Colors.blue.shade100,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            title: Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Text('Our Products',
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          color: Colors.white70,
                          letterSpacing: .5,
                          fontSize: 30.0))),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: IconButton(
                      color: Colors.white70,
                      icon: Icon(Icons.shopping_cart),
                      tooltip: 'Open shopping cart',
                      onPressed: () {
                        // handle the press
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
            bottom: TabBar(
              labelStyle: GoogleFonts.nunito(
                  textStyle: TextStyle(
                color: Colors.black,
                letterSpacing: .5,
              )),
              tabs: [
                Tab(
                  text: 'All Phones',
                ),
                Tab(text: 'Sales'),
                Tab(
                  text: 'About us',
                ),
                Tab(text: 'Others')
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [MultipleView(), SingleView(id: 1,), Sales(), AboutUs()],
        ),
      ),
    );
  }
}
