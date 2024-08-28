import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h_flutter_example_project/controllers/FavoriteViewModel.dart';
import 'package:h_flutter_example_project/models/CoffeeItem.dart';
import 'package:h_flutter_example_project/models/FavoriteItem.dart';
import 'package:h_flutter_example_project/services/CoffeeService.dart';
import 'package:h_flutter_example_project/services/FavoriteService.dart';
import 'package:h_flutter_example_project/themes/CoffeeTheme.dart';
import 'package:h_flutter_example_project/widgets/Layout.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'controllers/CoffeViewModel.dart';

/*
* 임포트 lib 목록
* $flutter pub add hive           : 경량 nosql
* $flutter pub add http           : api 요청
* $flutter pub add provider       : 상태 관리
* $flutter pub add path_provider  : 어플리케이션의 경로를 취득하기 위함.
* $flutter pub add camera         : 카메라 모듈
* $flutter pub add build_runner   : 클래스의 반복적인 부분을 하나의 코드로 변환함
* $flutter pub add hive_generator : hive에 model을 저장할 때 직렬화를 위해서 사용됨
* */
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(CoffeeItemAdapter());
  Hive.registerAdapter(FavoriteItemAdapter());

  // box 열기
  await Hive.openBox<FavoriteItem>("favoriteBox");

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => CoffeeViewModel(CoffeeService())
      ),
      ChangeNotifierProvider(
          create: (context) => FavoriteViewModel(FavoriteService())
      ),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget{

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면의 가장 자리까지 공간을 차지하겠다
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return MaterialApp(
      debugShowCheckedModeBanner: false, // 오른쪽 상단의 띠를 제거함.
      title: "my coffee",
      theme: CafeAppTheme.lightTheme,
      darkTheme: CafeAppTheme.darkTheme,
      initialRoute: "/",
      routes: {
        "/" : (context) =>  Layout()
      },
    );
  }
}