import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_icon_text.dart';
import 'package:flutter/material.dart';

class AdminUser extends StatelessWidget {
  const AdminUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.appBGColor,
      body: Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/image/cloudload.png"),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/image/shopping.jpg"),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/image/visacard.png"),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/image/mastercard.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                CustomIconText(icon: Icons.thumb_up ,text: AppString.cloudBaseSoftware,),
                CustomIconText(icon: Icons.thumb_up, text: AppString.webApp,),
                CustomIconText(icon: Icons.thumb_up, text: AppString.desktopApp),
                CustomIconText(icon: Icons.thumb_up, text: AppString.ios),
                CustomIconText(icon: Icons.thumb_up, text: AppString.androidApp), 
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: [
                      CustomIconText(icon: Icons.album, text: AppString.androidApp),
                      CustomIconText(icon: Icons.album, text: AppString.inventorybilling),
                      CustomIconText(icon: Icons.album, text: AppString.pos),
                      CustomIconText(icon: Icons.album, text: AppString.manufacturing),
                      CustomIconText(icon: Icons.album, text: AppString.onlineStore),
                      CustomIconText(icon: Icons.album, text: AppString.marketPlace),
                      CustomIconText(icon: Icons.album, text: AppString.payroll),
                      CustomIconText(icon: Icons.album, text: AppString.crm),
                      CustomIconText(icon: Icons.album, text: AppString.paymentGateway),
                      CustomIconText(icon: Icons.album, text: AppString.multiuserAccess),
                      CustomIconText(icon: Icons.album, text: AppString.companyPortfoli),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: 150,
                  width: 220,
                  child: Image.asset("assets/image/sublogo.png"),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100,),
                Center(child: Image.asset("assets/image/banklogo.PNG")),
                const SizedBox(height: 20,),
                CustomButton(
                  text: "Create New Company                      ",
                  icon: Icons.add,
                  onPressed: () {},
                  color: const Color(0xff2196f3),
                ),
                const SizedBox(height: 20,),
                const Text(AppString.demoemail, style: TextStyle(color: Colors.blue),),
                const Text(AppString.underYourMailCompanies),
                const SizedBox(height: 10,),
                
                 Expanded(
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
                          tabs: [
                            Tab(text: "Admin"),
                            Tab(text: "User"),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              buildAdminTable(),
                              buildUserTable(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                
                const SizedBox(height: 10,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const SizedBox(width: 5,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const SizedBox(width: 5,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const SizedBox(width: 5,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

   
  // Admin Table
  Widget buildAdminTable() {
    final List<Map<String, String>> companyData = [
      {"company": "Dream International Ltd", "data": "500MB"},
      {"company": "Nuzaima Enterprice", "data": "1.5GB"},
    ];
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          buildRow(['Company Name', 'Data', 'Action'], isHeader: true),
          for (var company in companyData)
            buildRow([company['company']!, company['data']!, 'Open'], isHeader: false),
        ],
      ),
    );
  }

  // User Table
  Widget buildUserTable() {
    final List<Map<String, String>> companyData = [
      {"company": "Dream International Ltd", "data": "500MB"},
      {"company": "Nuzaima Enterprice", "data": "1.5GB"},
    ];
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          buildRow(['Company Name', 'Data', 'Action'], isHeader: true),
          for (var company in companyData)
            buildRow([company['company']!, company['data']!, 'Open'], isHeader: false),
        ],
      ),
    );
  }

  // Helper to create table rows
  TableRow buildRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
      decoration: isHeader
          ? const BoxDecoration(
              color: Colors.blue,
            )
          : null,
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: isHeader
              ? Center(
                  child: Text(
                    cell,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              : Center(
                  child: cell == 'Open'
                      ? 

                      TextButton(onPressed: (){}, child: const Text("Open", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
                      
                      
                      : Text(cell),
                ),
        );
      }).toList(),
    );
  }
}
 





 