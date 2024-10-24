import 'package:dotted_line/dotted_line.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only( top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

           //=====>top header section
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffD1C4E9)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4.0 ),
                child: Row(
                  children: [
                    const SizedBox(width: 50,),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset("assets/image/logo_fcb.png")),
                    ),
                    const SizedBox(width: 15,),
                    const Text("Dream International PV Ltd", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),


                  const Spacer(),


                    IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add, color: Colors.blue,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.settings, color: Colors.blue,)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10,),


            //header section ===>2
            Container(
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                buildDashboardCard(
                  icon: Icons.shopping_cart,
                  title: 'Sales Order',
                  value: '1,26,50,569',
                ),
                buildDashboardCard(
                  icon: Icons.show_chart,
                  title: 'Sales',
                  value: '1,26,5,544',
                ),
                buildDashboardCard(
                  icon: Icons.local_shipping,
                  title: 'Delivery',
                  value: '1,26,5,544',
                ),
                buildDashboardCard(
                  icon: Icons.shopping_bag,
                  title: 'Purchase',
                  value: '1,26,5,544',
                ),
              ],),
            ),

            const SizedBox(height: 20),


            //header section ===>3

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                   children: [
                     Container(
                       width: 230,
                       decoration: BoxDecoration(
                           color: const Color(0xffE0E0E0),
                           borderRadius: BorderRadius.circular(8)
                       ),
                       child: const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Column(
                                   children: [
                                     Text("Cash In Hand", style: TextStyle(fontWeight: FontWeight.w500),),
                                     Text("12,300,50", style: TextStyle(fontWeight: FontWeight.w700),)

                                   ],
                                 ),

                                 SizedBox(width: 20,),

                                 Column(
                                   children: [
                                     Text("Cash In Hand", style: TextStyle(fontWeight: FontWeight.w500),),
                                     Text("12,300,50", style: TextStyle(fontWeight: FontWeight.w700),)

                                   ],
                                 ),



                               ],
                             ),




                           ],
                         ),
                       ),
                     ),

                     const SizedBox(height: 3,),

                     Container(
                       width: 230,
                       decoration: BoxDecoration(
                           color: const Color(0xffE0E0E0),
                           borderRadius: BorderRadius.circular(8)
                       ),
                       child: const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Column(
                                   children: [
                                     Text("Customer", style: TextStyle(fontWeight: FontWeight.w500),),
                                     Text("12,300,50", style: TextStyle(fontWeight: FontWeight.w700),)

                                   ],
                                 ),

                                 SizedBox(width: 20,),

                                 Column(
                                   children: [
                                     Text("Supplier", style: TextStyle(fontWeight: FontWeight.w500),),
                                     Text("12,300,50", style: TextStyle(fontWeight: FontWeight.w700),)

                                   ],
                                 ),
                               ],

                             ),


                           ],
                         ),
                       ),
                     ),

                   ],
                ),

                SizedBox(width: 5,),


                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffE0E0E0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                         Container(
                           //color: Colors.red,

                           child:  buildAccountTable() ,
                         ),


                      ],
                    ),
                  ),
                ),


                SizedBox(width: 5,),


                buildProfitChart(),

              ],
            ),

          ],
        ),
      ),
    );
  }



  // Helper method to create each dashboard card
  Widget buildDashboardCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      color: Colors.green.shade50, // Light green background
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 130,
          height:65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: Colors.blue, // Icon color
                size: 30,
              ),

              const SizedBox(width: 5,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text(
                        "Today", // The "Today" label
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, size: 10), // Dropdown arrow
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// DataTable widget to display account names and amounts
  Widget buildAccountTable() {
    return DataTable(

      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Account Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Amount',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
      rows: const <DataRow>[

        DataRow(
          cells: <DataCell>[
            DataCell(Text('Receipt', style: TextStyle(fontWeight: FontWeight.w600),)),
            DataCell(Text('124,15421', style: TextStyle(fontWeight: FontWeight.w600))),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Payment', style: TextStyle(fontWeight: FontWeight.w600))),
            DataCell(Text('11,458,154', style: TextStyle(fontWeight: FontWeight.w600))),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Expanse', style: TextStyle(fontWeight: FontWeight.w600))),
            DataCell(Text('1,154,782', style: TextStyle(fontWeight: FontWeight.w600))),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Income', style: TextStyle(fontWeight: FontWeight.w600))),
            DataCell(Text('1,231,125', style: TextStyle(fontWeight: FontWeight.w600))),
          ],
        ),
      ],
    );
  }

  // Bar Chart Widget for Profit
  Widget buildProfitChart() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffE0E0E0),
      ),

      height: 200,
      width: 400,
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  toY: 40, // Example data
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  toY: 30,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                  toY: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                  toY: 20,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                  toY: 37,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                  toY: 40,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 7,
              barRods: [
                BarChartRodData(
                  toY: 20,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 8,
              barRods: [
                BarChartRodData(
                  toY: 10,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 9,
              barRods: [
                BarChartRodData(
                  toY: 15,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 10,
              barRods: [
                BarChartRodData(
                  toY: 35,
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 11,
              barRods: [
                BarChartRodData(
                  toY: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            // Add more BarChartGroupData here for additional bars
          ],
        ),
      ),
    );
  }
}


