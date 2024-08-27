import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h_flutter_example_project/controllers/CoffeViewModel.dart';
import 'package:h_flutter_example_project/services/CoffeeService.dart';
import 'package:h_flutter_example_project/themes/CoffeeTheme.dart';
import 'package:h_flutter_example_project/widgets/Layout.dart';
import 'package:hive/hive.dart%20';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'models/CoffeeItem.dart';

/*
 * 임포트 lib 목록
 * $flutter pub add hive             : 경량 nosql
 * $flutter pub add http             : api 요청
 * $flutter pub add provider         : 상태 관리
 * $flutter pub add path_provider    : 어플리케이션의 경로를 취득하기 위함
 * $flutter pub add camera           : 카메라 모듈
 * $flutter pub add build_runner     : 클래스의 반복적인 부분을 하나의 코드로 변환함
 * $flutter pub add hive_generator   : hive에 model을 저장할 때 직렬화를 위해서 사용됨
 *
 */

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(CoffeeItemAdapter());

  runApp(
    MultiProvider(
        providers: [
         ChangeNotifierProvider(
             create: (context) => CoffeeViewModel(CoffeeService())
         ),
        ],
      child: const MainApp(),
    ));
}

class MainApp extends StatelessWidget{

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면의 가장 자리까지 공간을 차지하겠다.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my coffee",
      theme: CafeAppTheme.lightTheme,
      darkTheme: CafeAppTheme.darkTheme,
      initialRoute: "/",
      routes: {
        "/" :(context) => Layout()
      },
    );
  }
}

