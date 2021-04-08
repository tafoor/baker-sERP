import 'package:second/screens/Demands/demand.dart';
import 'package:second/screens/Employees/employee.dart';
import 'package:second/screens/Employees/salesman.dart';
import 'package:second/screens/Recipes/recipe.dart';
import 'package:second/screens/Store/purchasesIn.dart';
import 'package:second/screens/Store/rawItem.dart';
import 'package:second/screens/Store/stockInHand.dart';
import 'package:second/screens/Store/stockOut.dart';
import 'package:second/screens/Vehicles/maintenance.dart';
import 'package:second/screens/Vehicles/vehicle.dart';
import 'package:second/screens/Vendors/vendor.dart';
import 'package:second/screens/Wastage/waste.dart';
import 'screens/Login/login.dart';
import 'screens/SectionsAndGoods/finish.dart';
import 'screens/SectionsAndGoods/units.dart';
import 'screens/SectionsAndGoods/sections.dart';
import 'screens/AccountsAndDaybooks/account.dart';
import 'screens/AccountsAndDaybooks/eAdvSalary.dart';
import 'screens/AccountsAndDaybooks/sAdvSalary.dart';
import 'screens/AccountsAndDaybooks/eSalary.dart';
import 'screens/AccountsAndDaybooks/sSalary.dart';
import 'screens/AccountsAndDaybooks/reciept.dart';
import 'screens/AccountsAndDaybooks/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modules/authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            canvasColor: Colors.white,
            accentColor: Colors.grey
            ),
        initialRoute: 'login',
        debugShowCheckedModeBanner: false,
        routes: {
          'login': (context) => Login(),
          'sections': (context) => Sections(),
          'units': (context) => Units(),
          'finish': (context) => Finish(),
          'account': (context) => Accounts(),
          'reciept': (context) => Reciept(),
          'payment': (context) => Payment(),
          'eAdvSalary': (context) => EAdvSalary(),
          'sAdvSalary': (context) => SAdvSalary(),
          'eSalary': (context) => ESalary(),
          'sSalary': (context) => SSalary(),
          'vehicle': (context) => Vehicle(),
          'maintenance': (context) => Maintenance(),
          'employee': (context) => Employee(),
          'salesman': (context) => Salesman(),
          'vendor': (context) => Vendor(),
          'recipe': (context) => Recipe(),
          'demand': (context) => Demand(),
          'rawItem': (context) => RawItem(),
          'stockInHand': (context) => StockInHand(),
          'purchasesIn': (context) => PurchasesIn(),
          'stockOut': (context) => StockOut(),
          'waste': (context) => Waste(),
        },
      ),
    );
  }
}
