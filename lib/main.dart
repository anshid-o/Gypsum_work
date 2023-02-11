import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculate.dart';
import 'package:flutter_application_1/images.dart';
import 'package:flutter_application_1/main_screen.dart';
import 'package:flutter_application_1/modal/data_modal.dart';
import 'package:flutter_application_1/my_works.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(WorkModalAdapter().typeId)) {
    Hive.registerAdapter(WorkModalAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gypsum Work',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Gypsum Work'),
            bottom: const TabBar(
                // controller: ,
                tabs: [
                  Tab(
                    icon: Icon(Icons.calculate),
                    text: 'Calculate',
                  ),
                  Tab(
                    icon: Icon(Icons.work),
                    text: 'Works',
                  ),
                  Tab(
                    icon: Icon(Icons.post_add),
                    text: 'Post',
                  ),
                  Tab(
                    icon: Icon(Icons.image),
                    text: 'Images',
                  ),
                ]),
          ),
          body: TabBarView(children: [
            const ScreenCalculate(),
            const MyWorks(),
            MainScreen(),
            ImageScreen(),
          ]),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


// hive_flutter

// dev
// hive_generator
// build_runner