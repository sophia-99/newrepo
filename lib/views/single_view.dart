// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/phone_service.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_application_1/constants/api_response.dart';
// import 'package:flutter_application_1/models/phone_model.dart';
// import 'package:flutter_application_1/services/single_service.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_application_1/constants/api_response.dart';
// import 'package:flutter_application_1/models/phone_model.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SingleView extends StatefulWidget {
  final int id;
  SingleView({required this.id});
  @override
  _SingleViewState createState() => _SingleViewState();
}

class _SingleViewState extends State<SingleView> {
  
  // static const API = "https://www.paa.ubuni.co.tz/phones/:id";

  // Future<APIResponse<PhoneModel>> getPhone(int id) {
  //   return http.get(Uri.parse(API),
  //       headers: {"accept": "application/json"}).then((data) {
  //     if (data.statusCode == 200) {
  //       final _phone = json.decode(data.body);
  //       return APIResponse<PhoneModel>(data: PhoneModel.fromJson(_phone));
  //     }
  //     throw Exception('failed to load');
  //   });
  // }

  // late String errorMessage;

  @override
  void initState() {
    super.initState();
    Provider.of<PhoneService>(context, listen: false).getPhone(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final _singleService = Provider.of<PhoneService>(context);
    return Container(
      child: Card(
        margin: EdgeInsets.all(10.0),
        semanticContainer: true,
        elevation: 200.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _singleService.getPhone(1).image != null
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _singleService.getPhone(1).image!)),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/Screenshot from 2021-08-20 19-28-55.png')),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                          child: Text(_singleService.getPhone(1).name,
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontSize: 20.0)))),
                      SizedBox(
                        width: 70.0,
                      ),
                      Container(
                          child: Text(_singleService.getPhone(1).brand,
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                              )))),
                      SizedBox(
                        width: 70.0,
                      ),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text('20% OFF',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontSize: 15.0)))),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Product: 12',
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 14.0))),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text('SubTotal: 12',
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 15.0))),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text('Taxes: 12',
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 15.0))),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Card Holder Name',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                                fontSize: 10.0))),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(60)),
                      child: Text('Continue to Purchase',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: .5,
                                  fontSize: 15.0))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text('Sophia James Memba',
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontSize: 15.0))),
            ),
          ],
        ),
      ),
    );
  }
}
