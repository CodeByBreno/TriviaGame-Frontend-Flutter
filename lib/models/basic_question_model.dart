import 'package:trivia_game/models/option_question.dart';
import 'package:trivia_game/widgets/basic_question/tools/option_question_representation.dart';

class BasicQuestionModel {
  final String id_basic_question;
  final String text;
  final String? image_url;
  final String QUESTION;
  final List<OptionQuestionModel> options;
  final String type;
  final double? time;

  BasicQuestionModel({
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

  factory BasicQuestionModel.fromMap(Map<String, dynamic> json) => 
    BasicQuestionModel(
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

    
  List<OptionQuestionRepresentation> getOptionsRepresentations() {
    return options
        .map((option) => OptionQuestionRepresentation(option: option))
        .toList();
  }
}