import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fm/functions/function.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff015cae), Color.fromARGB(255, 0, 36, 70)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/logo-white.png',width: 100),
              paddingTop(10),
              const Text(
                'Une chaîne de télévision ivoirienne décomplexée, originale et positive.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14
                ),
              ),
              paddingTop(15),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                          FadeIn(
                            duration: const  Duration(seconds: 2),
                            child: Container(
                              height: 350,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/1668432102.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 1,
                                    left: 1,
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'WILLY A MIDI',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                            ),
                                          ),
                                          Text(
                                            'Le rendez-vous \nde la pause déjeuner !',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200
                                            )
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        paddingTop(15),
                        FadeIn(
                          duration: const  Duration(seconds: 2),
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/1668686525.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                Positioned(
                                  bottom: 1,
                                  left: 1,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'LA REUNION',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                          ),
                                        ),
                                        Text(
                                          'Pour parler des sujets\nqui nous concernent',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w200
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  paddingLeft(15),
                  Expanded(
                    child: Column(
                      children: [
                        FadeIn(
                          duration: const  Duration(seconds: 2),
                          child: Container(
                            height: 280,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/1668696892.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                Positioned(
                                  bottom: 1,
                                  left: 1,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'LIFE WKD',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                          ),
                                        ),
                                        Text(
                                          'Le talk show du\nvendredi soir',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w200
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        paddingTop(15),
                        FadeIn(
                          duration: const  Duration(seconds: 2),
                          child: Container(
                            height: 280,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/1668438777.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                Positioned(
                                  bottom: 1,
                                  left: 1,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'LE GRAND TALK',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                          ),
                                        ),
                                        Text(
                                          'Le débat sans filtre\nsur l’actualité',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w200
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}