import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text('tafoor14@gmail.com'),
                accountName: Text('Tafoor Ahmed'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/cv.jpg'),
                  radius: 10,
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushNamed(
                  context,
                  'sections',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Sections and Goods ',
                ),
              ),
              ListTile(
                title: Text('Sections'),
                leading: Icon(Icons.space_bar),
                onTap: () => Navigator.pushNamed(
                  context,
                  'sections',
                ),
              ),
              ListTile(
                title: Text('Units'),
                leading: Icon(Icons.line_weight),
                onTap: () => Navigator.pushNamed(
                  context,
                  'units',
                ),
              ),
              ListTile(
                title: Text('Finish'),
                leading: Icon(Icons.cake),
                onTap: () => Navigator.pushNamed(
                  context,
                  'finish',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Accounts and Daybooks',
                ),
              ),
              ListTile(
                title: Text('Account'),
                leading: Icon(Icons.person),
                onTap: () => Navigator.pushNamed(
                  context,
                  'account',
                ),
              ),
              ListTile(
                title: Text('Reciept'),
                leading: Icon(Icons.receipt),
                onTap: () => Navigator.pushNamed(
                  context,
                  'reciept',
                ),
              ),
              ListTile(
                title: Text('Payment'),
                leading: Icon(Icons.money_sharp),
                onTap: () => Navigator.pushNamed(
                  context,
                  'payment',
                ),
              ),
              ListTile(
                title: Text('Employee Advance Salary'),
                leading: Icon(Icons.person_add),
                onTap: () => Navigator.pushNamed(
                  context,
                  'eAdvSalary',
                ),
              ),
              ListTile(
                title: Text('Salesman Advance Salary'),
                leading: Icon(Icons.person_add),
                onTap: () => Navigator.pushNamed(
                  context,
                  'sAdvSalary',
                ),
              ),
              ListTile(
                title: Text('Employee Salary'),
                leading: Icon(Icons.person_add_alt_1),
                onTap: () => Navigator.pushNamed(
                  context,
                  'eSalary',
                ),
              ),
              ListTile(
                title: Text('Salesman Salary'),
                leading: Icon(Icons.person_add_alt_1),
                onTap: () => Navigator.pushNamed(
                  context,
                  'sSalary',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Vehicles',
                ),
              ),
              ListTile(
                title: Text('Vehicle'),
                leading: Icon(Icons.emoji_transportation),
                onTap: () => Navigator.pushNamed(
                  context,
                  'vehicle',
                ),
              ),
              ListTile(
                title: Text('Maintenance'),
                leading: Icon(Icons.car_repair),
                onTap: () => Navigator.pushNamed(
                  context,
                  'maintenance',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Employees',
                ),
              ),
              ListTile(
                title: Text('Employee'),
                leading: Icon(Icons.person_add_alt_1_outlined),
                onTap: () => Navigator.pushNamed(
                  context,
                  'employee',
                ),
              ),
              ListTile(
                title: Text('Salesman'),
                leading: Icon(Icons.person_add_alt_1_outlined),
                onTap: () => Navigator.pushNamed(
                  context,
                  'salesman',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Vendors',
                ),
              ),
              ListTile(
                title: Text('Vendor'),
                leading: Icon(Icons.shopping_bag_outlined),
                onTap: () => Navigator.pushNamed(
                  context,
                  'vendor',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Recipes',
                ),
              ),
              ListTile(
                title: Text('Recipe'),
                leading: Icon(Icons.receipt_long),
                onTap: () => Navigator.pushNamed(
                  context,
                  'recipe',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Demands',
                ),
              ),
              ListTile(
                title: Text('Demand'),
                leading: Icon(Icons.add_alert),
                onTap: () => Navigator.pushNamed(
                  context,
                  'demand',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Store',
                ),
              ),
              ListTile(
                title: Text('Raw Item'),
                leading: Icon(Icons.arrow_forward_ios),
                onTap: () => Navigator.pushNamed(
                  context,
                  'rawItem',
                ),
              ),
              ListTile(
                title: Text('Stock In Hand'),
                leading: Icon(Icons.pie_chart),
                onTap: () => Navigator.pushNamed(
                  context,
                  'stockInHand',
                ),
              ),
              ListTile(
                title: Text('Purchases In'),
                leading: Icon(Icons.pie_chart),
                onTap: () => Navigator.pushNamed(
                  context,
                  'purchasesIn',
                ),
              ),
              ListTile(
                title: Text('Stock Out'),
                leading: Icon(Icons.shopping_basket),
                onTap: () => Navigator.pushNamed(
                  context,
                  'stockOut',
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Wastage',
                ),
              ),
              ListTile(
                title: Text('Waste'),
                leading: Icon(Icons.wash),
                onTap: () => Navigator.pushNamed(
                  context,
                  'waste',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
