import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main()
{
  ///1. 유저에게 어떤 타입을 낼 것인지 물어보는 질의 창
  print("==== 가위바위보 게임 실행 시작 ====");
  print("가위, 바위, 보 중 하나를 선택하여 입력:");
  final String userInput = stdin.readLineSync(encoding: utf8) ?? '에러'; // c로 치면 scanf같은 거라 값을 받는놈

  ///2. 컴퓨터가 낼 타입이 어떤 것인지 결정하는 함수
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];
  print("================================\n나:"+userInput);
  print("컴퓨터:"+cpuInput);
  print("================================");
  final result = getResult(userInput, cpuInput);
  print(result);
  ///3. 유저의 타입과 컴퓨터의 타입에 대한 결과를 계산할 함수
}

String getResult(String userInput, String cpuInput) {

  const cpuWin = "'컴퓨터'가 이긴..";
  const plaWIn = "'님이' 이긴!";
  const drow = "둘다 비긴";
  String result =drow;

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      } else if (cpuInput == '보') {
        result = plaWIn;
      } else if (cpuInput == '가위') {
        result = drow;
      }
    case '바위':
      if (cpuInput == '바위') {
        result = drow;
      } else if (cpuInput == '보') {
        result = cpuWin;
      } else if (cpuInput == '가위') {
        result = plaWIn;
      }
    case '보':
      if (cpuInput == '바위') {
        result = plaWIn;
      } else if (cpuInput == '보') {
        result = drow;
      } else if (cpuInput == '가위') {
        result = cpuWin;
      }
    default:
      result = ("앗! 입력을 잘 못 하셨나봐요..");
    }
    return result;
  }

