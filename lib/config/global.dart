import 'package:flutter/material.dart';
import 'package:trivia_game/utils/hex_color.dart';

// Version
const APP_VERSION = "2.1.0";

// Server 
const API_URL = "http://localhost:3000";

// Personalization Defaults
const OPTION_BACKGROUND_COLOR_DEFAULT = Colors.white;
const OPTION_BACKGROUND_COLOR_CORRECT = Colors.green;
const OPTION_BACKGROUND_COLOR_WRONG = Colors.red;
const OPTION_BACKGROUND_COLOR_DISABLED = Colors.grey;

// Cores para fontes
const FONT_PRIMARY_LIGHT_COLOR = Colors.white;
final FONT_PRIMARY_DARK_COLOR = hexColor("#414141");

// Cores em geral
final BUTTON_BACKGROUND_COLOR = hexColor("#FFD650");
final BOX_LIGHTER_COLOR = hexColor("#FFE387");

// Texto da tela inicial
const TITLE_HOME = "QuizGame: Vale do São Francisco";
const CAPTION_HOME = "Conheça um pouco mais da região através de um jogo de perguntas";

// Default Padding
const DEFAULT_PADDING = const EdgeInsets.symmetric(horizontal: 20, vertical: 30);

// Transition time
const DEFAULT_TRANSITION_TIME = 200;
