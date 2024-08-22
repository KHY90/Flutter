import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* Image
* Image 위젯은 Flutter에서 이미지를 화면에 표시하는 데 사용되는 위젯으로
* 이 위젯은 로컬 이미지 파일, 네트워크 이미지, 메모리에서 이미지를 불러오는 등 다양한 소스에서 이미지를 표시할 수 있다.
*
* 주요 속성
* 1. image : 표시할 이미지 소스를 지정한다. ImageProvider 타입의 객체를 사용한다.
*   ImageProvider 객체는 AssetImage, NetworkImage, FileImage 등이 존재한다.
* 2. fit : 이미지가 위젯의 크기에 맞춰 어떻게 조정될지를 설정하며 일반적으로 사용되는 값은 BoxFit.cover, Boxfit.containt BoxFit.fill등이 있다.
* 3. width : 이미지의 너비를 설정한다.
* 4. height : 이미지의 높이를 설정한다.
* 5. alignment : 이미지의 정렬 방식을 설정한다. 기본 값은 .center이다.
* 6. color: 이미지에 색상을 입힐 수 있으며 이 속성을 사용하면 이미지에 색상이 혼합된다.
*
* Image 속성
* Img 속성에서는 AssetImage, NetworkImage 위젯 두 가지를 사용할 수 있다.
* 각각의 위젯은 다음과 같은 기능을 수행한다.
*
* AssetImage
* pubspec.yaml 파일에 등록된 이미지 리소스를 로드하는데 사용하는 위젯이다.
*
* 주요 특징
* 1. 로컬 이미지 로드 : AssetImage를 사용하면 프로젝트 내의 assets 폴더에 있는 이미지를 쉽게 로드할 수 있음
* 2. 비동기 로드 : 이미지는 비동기적으로 로드되며, 이미지가 로드되는 동안 사용자에게 다른 ui를 표시할 수 있다.
* 3. 캐싱 : AssetsImage는 이미지를 캐시하여, 동일한 이미지를 여러 번 요청할 때 성능을 최적화한다.
*
*
* NetworkImage
* flutter에서 인터넷에 있는 이미지 파일을 로드하기 위해 사용하는 클래스이다.
* 이 클래스는 URL을 통해 이미지를 가져오고,Image 위젯과 함께 사용되며 원격 서버에 저장된 이미지를 표시한다.
*
* 주요 특징
* 1. 원격 이미지 로드 : NetworkImage를 사용하면 url을 통해 인터넷에서 이미지를 불러올 수 있다.
* 2. 비동기 로드 : 이미지는 비동기적으로 로드되며, 이미지가 로드되는 동안 다른 ui 요소가 사용자에게 표시될 수 있다.
* 3. 캐싱 : 이미지를 캐시하여 동일한 이미지를 여러 번 요청할 때 성능을 최적화한다.
* 4. 에러 처리 : 네트워크 요청이 실패한 경우, 기본적으로 Image 위젯은 여러 이미지를 표시하거나 빈 공간을 남길 수 있다.
* */

class ImageWidget extends StatelessWidget{

  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Tooltip(
          message: "춘이 입니다.",
          child:
          Image(
            image: AssetImage("assets/KakaoTalk_20240822_122032461.jpg"),
            width: 100,
            height: 200,
          ),
        ),
        Image(
          image: AssetImage("assets/KakaoTalk_20240822_122123654.jpg"),
          width: 100,
          height: 200,
        ),
        Image(
          image: NetworkImage("https://cdn.comento.kr/blog/developer/2023/11/flutter-plugin.webp"),
          width: 100,
          height: 200,
        ),
      ],
    );
  }
}