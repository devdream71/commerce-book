import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DashboardMain extends StatelessWidget {
  const DashboardMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10, top: 10.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Text("glive"),
              ),
              const SizedBox(),
              Container(
                margin: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text("glive"),
                icon: const Icon(Icons.add),
              ),

              ElevatedButton.icon(onPressed: (){}, label: const Text("glive"), icon: const Icon(Icons.add),),
              
              
               

            ],
          ),
        ),
      ),
    );
  }
}
