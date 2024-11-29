import 'package:audioplayers/audioplayers.dart';

Future<void> playAudio(AudioPlayer audioObject, String source) async {
  await audioObject.play(AssetSource(source));
}
