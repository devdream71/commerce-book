import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_11_dot_button.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_four_icon_bottom.dart';
import 'package:f_test/widgets/custom_four_icon_top.dart';
import 'package:f_test/widgets/custom_thumb_up_five.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminUser extends StatelessWidget {
  const AdminUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 90.0, right: 90.0, top: 90, bottom: 90),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.appBGColor,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.arrow_back))),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close))),
                  ],
                ),
              ),
              Row(children: [
                //left side
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 80.0,
                    ),
                    child: SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),

                          CustomFourIconTop(),
                          SizedBox(
                            height: 10,
                          ),
                          CustomThumbUpFive(),
                          SizedBox(
                            height: 10,
                          ),

                          Custom11DotButton(),
                          SizedBox(
                            height: 20,
                          ),
                          // SizedBox(
                          //   height: 150,
                          //   width: 220,
                          //   child: Image.asset("assets/image/sublogo.png"),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                //right side
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset("assets/image/banklogo.PNG")),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                          text: "Create New Company",
                          icon: Icons.add,
                          onPressed: () {},
                          color: const Color(0xff2196f3),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppString.demoemail,
                          style: TextStyle(color: Colors.blue),
                        ),
                        const Text(AppString.underYourMailCompanies),
                        const SizedBox(
                          height: 10,
                        ),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomFourIconBottom()
                      ],
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
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
            buildRow([company['company']!, company['data']!, 'Open'],
                isHeader: false),
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
            buildRow([company['company']!, company['data']!, 'Open'],
                isHeader: false),
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
                      ? TextButton(
                          onPressed: () {
                            //Get.to(const ForgetPasswordEmail());
                          },
                          child: const Text(
                            "Open",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ))
                      : Text(cell),
                ),
        );
      }).toList(),
    );
  }
}
