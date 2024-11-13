import 'package:trivia_game/models/option_question.dart';

class BasicQuestioModel {
  final String id_basic_question;
  final String text;
  final String? image_url;
  final String QUESTION;
  final List<OptionQuestionModel> options;
  final String type;
  final double? time;

  BasicQuestioModel({
    required this.id_basic_question,
    required this.text,
    required this.QUESTION, 
    this.image_url,
    required this.options,    
    required this.type,    
    required this.time,   
  });

  Map<String, dynamic> toMap() =>  <String, dynamic>{
      'id_basic_question': id_basic_question,
      'text': text,
      'image_url': image_url,
      'QUESTION': QUESTION,
      'options': options.map((option) => option.toMap()).toList(),
      'type': type,
      'time': time,
    };

  factory BasicQuestioModel.fromMap(Map<String, dynamic> json) => 
    BasicQuestioModel(
      id_basic_question: json['id_basic_question'] as String, 
      text: json['text'] as String,  
      image_url: json['image_url'] as String?,
      QUESTION: json['QUESTION'] as String, 
      options: ((json['options'] as List<dynamic>)
                  .map((e) => OptionQuestionModel.fromMap(e as Map<String, dynamic>)))
                  .toList(),
      type: json['type'] as String, 
      time: (json['time'] as num?)?.toDouble(),
      );
}