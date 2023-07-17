import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:fm/functions/function.dart';
import 'package:radio_player/radio_player.dart';

class Fm extends StatefulWidget {
  const Fm({super.key});

  @override
  State<Fm> createState() => _FmState();
}

class _FmState extends State<Fm> {

  final RadioPlayer radioPlayer = RadioPlayer();
  late bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    radioPlayer.setChannel(title: 'Life Radio', url: 'https://cast4.asurahosting.com/proxy/life/stream');
    radioPlayer.stateStream.listen((value) {
      setState(() { isPlaying = value; });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff015cae), Color.fromARGB(255, 0, 36, 70)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo-radio-fm.png',width: 230),
          paddingTop(20),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/wad.webp'),
            radius: 150,
          ),
          paddingTop(15),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.skip_previous,size: 50,color: Colors.white),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPlaying = !isPlaying;
                      if(isPlaying){
                        radioPlayer.play();
                      }else{
                        radioPlayer.pause();
                      }
                    });
                  },
                  child: Icon(
                    isPlaying==false
                    ? FluentIcons.play_circle_48_regular
                    : FluentIcons.pause_48_regular,
                    size: 80,
                    color: Colors.white
                  )
                ),
                const Icon(Icons.skip_next_rounded ,size: 50,color: Colors.white),
              ],
            ),
          ),
          paddingTop(30),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(FluentIcons.heart_48_regular,size: 25,color: Colors.white),
                paddingLeft(30),
                const Icon(FluentIcons.task_list_add_24_regular,size: 25,color: Colors.white),
                paddingLeft(30),
                const Icon(FluentIcons.play_48_regular ,size: 25,color: Colors.white),
                paddingLeft(30),
                const Icon(FluentIcons.voicemail_48_regular ,size: 25,color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}