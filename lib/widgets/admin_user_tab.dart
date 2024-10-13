import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget implements PreferredSizeWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(text: "Admin"),
        Tab(text: "User"),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class TabBarViewSection extends StatelessWidget {
  final List<Map<String, String>> companyData = [
    {"company": "Dream International Ltd", "data": "500MB"},
    {"company": "Nuzaima Enterprice", "data": "1.5GB"},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
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
    );
  }

  Widget buildAdminTable() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          buildRow(['Company Name', 'Data', 'Action'], isHeader: true),
          for (var company in companyData)
            buildRow([company['company']!, company['data']!, 'Open']),
        ],
      ),
    );
  }

  Widget buildUserTable() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          buildRow(['Company Name', 'Data', 'Action'], isHeader: true),
          for (var company in companyData)
            buildRow([company['company']!, company['data']!, 'Open']),
        ],
      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cell,
            style: TextStyle(
              fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        );
      }).toList(),
    );
  }
}
