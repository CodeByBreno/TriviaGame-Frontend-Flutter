class OptionQuestionModel {
  final String id_option_question;
  final String text;
  final bool correct;
  final String type;
  final String? equivalent_option_id;
  final String question_id;

  OptionQuestionModel({
    required this.id_option_question,
    required this.text,
    required this.correct,
    required this.type,
    this.equivalent_option_id,
    required this.question_id,
  });

  Map<String, dynamic> toMap() => <String, dynamic>{
      'id_option_question': id_option_question,
      'text': text,
      'correct': correct,
      'type': type,
      'equivalent_option_id': equivalent_option_id,
      'question_id': question_id,
    };

  factory OptionQuestionModel.fromMap(Map<String, dynamic> map) => 
    OptionQuestionModel(
      id_option_question: map['id_option_question'] as String, 
      text: map['text'] as String, 
      correct: map['correct'] as bool,
      type: map['type'] as String,  
      equivalent_option_id: map['equivalent_option_id'] as String?, 
      question_id: map['question_id'] as String
      );
}