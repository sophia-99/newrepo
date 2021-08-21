import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/phone_service.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final _service = Provider.of<PhoneService>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('example'),
        ),
        body: ListView.builder(
            itemCount: _service.phoneList.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 10.0),
                              child: _service.phoneList[index].image != null
                                  ? Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.50,
                                      padding: EdgeInsets.all(10.0),
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(_service
                                                  .phoneList[index].image!)
                                              // AssetImage(
                                              //     'assets/images/Screenshot from 2021-08-18 19-19-36.png')
                                              ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.white),
                                    )
                                  : Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.50,
                                      padding: EdgeInsets.all(10.0),
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/Screenshot from 2021-08-20 19-28-55.png')),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.white),
                                    ),
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Text(
                            _service.phoneList[index].name,
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          )),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Text(
                            _service.phoneList[index].brand,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          )),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Center(child: Text('20% OFF')),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                      )
                    ]),
              );
            }));
  }
}
