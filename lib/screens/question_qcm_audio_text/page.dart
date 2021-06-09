import 'package:edutainment/models/classes/DomainNames.dart';
import 'package:flutter/material.dart';
import 'package:edutainment/widgets/WidgetAppBarDomain.dart';
import 'package:edutainment/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:edutainment/widgets/WidgetChoiceTextButton.dart';
import '../../widgets/WidgetQuestionBoxAudio.dart';

class PageQuestionQcmAudioText extends StatefulWidget {
  static const String _pageName = kPageQuestionQcmAudioText;

  @override
  _PageQuestionQcmAudioTextState createState() =>
      _PageQuestionQcmAudioTextState();
  static String getPageName() {
    return _pageName;
  }
}

class _PageQuestionQcmAudioTextState extends State<PageQuestionQcmAudioText> {
  @override
  Widget build(BuildContext context) {
    final DomainNames domain = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background ${domainIndex[domain]}.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              WidgetAppBarDomain(
                title: domainString[domain], // to change
                domain: domainIndex[domain],
                height: 140,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Score:8',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      color: domainColor[domain],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              WidgetQuestionBoxAudio(
                  audioPath: 'animal audio/little_eagle.wav'),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WidgetChoiceTextButton(
                      text: 'fuck4', textColor: domainColor[domain]),
                  SizedBox(
                    width: 15,
                  ),
                  WidgetChoiceTextButton(
                      text: 'fuck4', textColor: domainColor[domain]),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WidgetChoiceTextButton(
                      text: 'fuck2', textColor: domainColor[domain]),
                  SizedBox(
                    width: 15,
                  ),
                  WidgetChoiceTextButton(
                      text: 'fuck4', textColor: domainColor[domain]),
                ],
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/bird.svg'),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
