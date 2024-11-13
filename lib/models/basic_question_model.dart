class BasicQuestion {
  final String id_basic_question;
  final String text;
  final String? image_url;
  final String QUESTION;
  final String answer_a;
  final String answer_b;
  final String answer_c;
  final String answer_d;
  final String? answer_e;
  final String? answer_f;
  final String correct;
  final String type;
  final double? time;

  BasicQuestion({
    required this.id_basic_question,
    required this.text,
    required this.QUESTION, 
    this.image_url,
    required this.answer_a,
    required this.answer_b,
    required this.answer_c,
    required this.answer_d,
    this.answer_e,
    this.answer_f,
    required this.correct,    
    required this.type,    
    required this.time,   
  });

  Map<String, dynamic> toMap() {
    return {
      'id_basic_question': id_basic_question,
      'text': text,
      'image_url': image_url,
      'QUESTION': QUESTION,
      'answer_a': answer_a,
      'answer_b': answer_b,
      'answer_c': answer_c,
      'answer_d': answer_d,
      'answer_e': answer_e,
      'answer_f': answer_f,
      'correct': correct,
      'type': type,
      'time': time,
    };
  }

  factory BasicQuestion.fromMap(Map<String, dynamic> map) {
    return BasicQuestion(
      id_basic_question: map['id_basic_question'], 
      text: map['text'], 
      image_url: map['image_url'],
      QUESTION: map['QUESTION'], 
      answer_a: map['answer_a'], 
      answer_b: map['answer_b'], 
      answer_c: map['answer_c'], 
      answer_d: map['answer_d'], 
      answer_e: map['answer_e'],
      answer_f: map['answer_f'],
      correct: map['correct'], 
      type: map['type'], 
      time: map['time']
      );
  }
}