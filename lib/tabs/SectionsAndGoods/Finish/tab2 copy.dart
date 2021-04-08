import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'ID',
              ),
            ),
            DataColumn(
              label: Text(
                'NAME',
              ),
            ),
            DataColumn(
              label: Text(
                'SECTION',
              ),
            ),
            DataColumn(
              label: Text(
                'COMPANY VEHICLE PRICE',
              ),
            ),
            DataColumn(
              label: Text(
                'OTHER VEHICLE PRICE',
              ),
            ),
            DataColumn(
              label: Text(
                'TCS & OTHERS',
              ),
            ),
            DataColumn(
              label: Text(
                'QUANTITY',
              ),
            ),
            DataColumn(
              label: Text(
                'UNIT',
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1')),
                DataCell(Text('PanCake')),
                DataCell(Text('Cakes')),
                DataCell(Text('100')),
                DataCell(Text('80')),
                DataCell(Text('70')),
                DataCell(Text('5')),
                DataCell(Text('Tray')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2')),
                DataCell(Text('brownies')),
                DataCell(Text('Pastries')),
                DataCell(Text('151')),
                DataCell(Text('90')),
                DataCell(Text('80')),
                DataCell(Text('10')),
                DataCell(Text('Dozen')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
