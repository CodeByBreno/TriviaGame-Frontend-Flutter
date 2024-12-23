import 'dart:math';

class ImagesProject {
  static const String backgroundDefault = "assets/img/backgrounds/BackgroundDefault.svg";
  static const String biggerBackgroundXilogravure = "assets/img/BiggerBackgroundXilogravure.svg";
  static const String mediumBorderXilogravure = "assets/img/MediumBorderXilogravure.svg";
  static const String quizLogoNordeste = "assets/img/QuizLogoNordeste.svg";
  static const String xilogravureHomePage = "assets/img/XilogravureHomePage.svg";
  static const String carranca = "assets/img/Carranca.svg";
  static const String cactus = "assets/img/Cactus.svg";
  static const String questionTextBorder = "assets/img/QuestionTextBorder.svg";
  static const String checkBox = "assets/img/CheckBox.svg";
  static const String positiveCheck = "assets/img/PositiveCheck.svg";
  static const String negativeCheck = "assets/img/NegativeCheck.svg";
  static const String backgroundMainPage = "assets/img/backgrounds/BackgroundMainPage.svg";

  static const String quizLogoNordestePNG = "assets/img/QuizLogoNordeste.png";
  static const String xilogravureHomePagePNG = "assets/img/XilogravureHomePage.png";
  static const String backgroundDefaultPNG = "assets/img/backgrounds/BackgroundDefault.png";
  static const String biggerBackgroundXilogravurePNG = "assets/img/BiggerBackgroundXilogravure.png";
  static const String mediumBorderXilogravurePNG = "assets/img/MediumBorderXilogravure.png";
  static const String carrancaPNG = "assets/img/Carranca.png";
  static const String checkBoxPNG = "assets/img/CheckBox.png";
  static const String positiveCheckPNG = "assets/img/PositiveCheck.png";
  static const String negativeCheckPNG = "assets/img/NegativeCheck.png";
  static const String cactusPNG = "assets/img/Cactus.png";
  static const String tatuPNG = "assets/img/tatu.png";

  
  static const String backgroundQuestion1PNG = "assets/img/backgrounds/BackgroundQuestion1.png";
  static const String backgroundQuestion2PNG = "assets/img/backgrounds/BackgroundQuestion2.png";
  static const String backgroundQuestion3PNG = "assets/img/backgrounds/BackgroundQuestion3.png";
  static const String backgroundQuestion4PNG = "assets/img/backgrounds/BackgroundQuestion4.png";
  static const String backgroundQuestion5PNG = "assets/img/backgrounds/BackgroundQuestion5.png";
  static const String resultPagePNG = "assets/img/backgrounds/ResultPage.png";

   static String getRandomBackground() {
    List<String> backgrounds = [
      backgroundQuestion1PNG,
      backgroundQuestion2PNG,
      backgroundQuestion3PNG,
      backgroundQuestion4PNG,
      backgroundQuestion5PNG,
    ];

    Random random = Random();
    int index = random.nextInt(backgrounds.length); 

    return backgrounds[index];
  }
}