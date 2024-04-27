import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/dashboard/controller/dashboard_controller.dart';
import 'package:project/featuers/dashboard/controller/dashboard_state.dart';

class DashbordPage extends StatelessWidget {
  final List<String> titles = const ['MyDay', 'Important', 'Long Time Tasks'];

  const DashbordPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocBuilder<DashboardController, DashboardState>(
        builder: (context, state) {
          DashboardController controller = context.read<DashboardController>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Text(
                titles[controller.selectedTapIndex],
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'registration');
                    },
                    icon: const Icon(CupertinoIcons.add))
              ],
            ),
            body: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onChangeTabIndex,
              children: const [
                Text('Home'),
                // UserPage(),
                Text('Services'),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.selectedTapIndex,
              onTap: controller.onChangeTabIndex,
              unselectedItemColor: Colors.blue.shade400,
              showUnselectedLabels: true,
              unselectedLabelStyle: const TextStyle(fontSize: 17, color: Colors.blueGrey),
              items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'MyDay'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Important'),
                BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Long Time Tasks'),
              ],
            ),
          );
        },
      ),
    );
  }
}