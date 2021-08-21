import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/phone_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MultipleView extends StatefulWidget {
  @override
  _MultipleViewState createState() => _MultipleViewState();
}

class _MultipleViewState extends State<MultipleView> {
  @override
  Widget build(BuildContext context) {
    final _service = Provider.of<PhoneService>(context);
    return ListView.builder(
        itemCount: _service.phoneList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            child: Card(
              margin: EdgeInsets.all(10.0),
              semanticContainer: true,
              elevation: 200.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Colors.white,
              child: Row(
                children: [
                  _service.phoneList[index].image != null
                      ? Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _service.phoneList[index].image!)),
                              
                              borderRadius: BorderRadius.circular(10)),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/Screenshot from 2021-08-20 19-28-55.png')),
                              
                              borderRadius: BorderRadius.circular(10)),
                        ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.5),
                            child: Text(_service.phoneList[index].name,
                                style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: .5,
                                        fontSize: 20.0)))),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                            child: Text(_service.phoneList[index].brand,
                                style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: .5,
                                        fontSize: 10.0)))),
                        SizedBox(
                          height: 20.0,
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
                                )))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
