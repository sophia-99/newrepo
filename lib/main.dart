

import 'package:flutter/material.dart';
import 'package:flutter_application_1/App.dart';
import 'package:flutter_application_1/services/phone_service.dart';
import 'package:flutter_application_1/services/single_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: 
      [
        ChangeNotifierProvider(create: (context)=>PhoneService()
    ),
     ChangeNotifierProvider(create: (context)=>SingleService()
    ),
  ], child :
    MyApp()));
}



