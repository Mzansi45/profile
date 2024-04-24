import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isHovering = false;
  bool isHovering2 = false;

  Future<void> _launchUrl(String link) async {
    try {
      var url = Uri.parse(link);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    } on Exception {
      // TODO
    }
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) {
      return Wrap(
        children: [
          SizedBox(
            //color: Colors.blueAccent,
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Container(
                /*decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),*/
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  //right: MediaQuery.of(context).size.width * 0.05,
                  //top: MediaQuery.of(context).size.height * 0.2,
                  bottom: MediaQuery.of(context).size.height * 0.2,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Hello, I'm
                    Row(
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.016,
                          ),
                        ),
                        Text(
                          ', I\'m',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.016,
                            color: Colors.grey[850],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.004),

                    // Thulani Gulube
                    Row(
                      children: [
                        Text(
                          'Thulani Gulube',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 194, 61, 0),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    // Software Engineer/Developer | Software Architect
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Software Engineer/Developer | Software Architect',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.016,
                            ),
                          ),
                        ),
                        //Spacer(),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008),

                    // about summary
                    Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            children: [
                              Text(
                                'I am a software engineer/developer and software architect with a passion for building software solutions that solve real-world problems. I have experience in building web and mobile applications, and I am always looking to learn new technologies and improve my skills.',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey[850],
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                    // View Resume
                    Row(
                      children: [
                        /*ElevatedButton(
                          onPressed: () {},
                          child: const Text('View Resume'),
                        ),*/
                        MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              isHovering2 = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              isHovering2 = false;
                            });
                          },
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                    //tertiary color
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            ),
                            child: AnimatedCrossFade(
                              firstChild: const Text('Resume'),
                              secondChild: const Icon(Icons.download),
                              crossFadeState: isHovering2
                                  ? CrossFadeState.showSecond
                                  : CrossFadeState.showFirst,
                              duration: const Duration(milliseconds: 800),
                              firstCurve: Curves.elasticInOut,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                    // Social Media Icons
                    Row(
                      children: [
                        Text('Socials:   ',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.016)),
                        // LinkedIn, GitHub, X
                        Tooltip(
                          message: 'LinkedIn',
                          child: IconButton(
                            onPressed: () {
                              //redirect to LinkedIn website
                              _launchUrl(
                                  'https://www.linkedin.com/in/mzansi45/');
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.linkedin,
                              size: 30,
                            ),
                          ),
                        ),
                        Tooltip(
                          message: 'GitHub',
                          child: IconButton(
                            onPressed: () {
                              //redirect to GitHub website
                              _launchUrl('https://github.com/mzansi45');
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.github,
                              size: 30,
                            ),
                          ),
                        ),
                        Tooltip(
                          message: 'X',
                          child: IconButton(
                            onPressed: () {
                              //redirect to Twitter website
                              _launchUrl('https://twitter.com/t_gulube');
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.xTwitter,
                              size: 30,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            //color: Colors.redAccent,
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.062,
                    left: MediaQuery.of(context).size.width * 0.05,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        border: Border.all(
                          color: Colors.white70,
                          width: 2,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.08,
                    left: MediaQuery.of(context).size.width * 0.07,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        border: Border.all(
                          color: Colors.white70,
                          width: 2,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      child: Center(
                        child: SizedBox(
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Agne',
                            ),
                            child: SingleChildScrollView(
                              //autoscroll
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  //Java
                                  TypewriterAnimatedText(
                                    'public class HelloWorld { \n\n  public static void main(String[] args) { \n         System.out.println("Hello, World!"); \n  } \n\n}',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: TextStyle(
                                        //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.014),
                                  ),

                                  //Python
                                  TypewriterAnimatedText(
                                    'print("Hello, World!")',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: TextStyle(
                                        //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.014),
                                  ),

                                  //JavaScript
                                  TypewriterAnimatedText(
                                    'console.log("Hello, World!");',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: TextStyle(
                                        //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.014),
                                  ),

                                  //C#
                                  TypewriterAnimatedText(
                                    'using System; \n\nnamespace HelloWorld { \n\n  class Program { \n\n    static void Main(string[] args) { \n\n      Console.WriteLine("Hello, World!"); \n\n    } \n\n  } \n\n}',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: TextStyle(
                                        //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.014),
                                  ),

                                  //C++
                                  TypewriterAnimatedText(
                                    '#include <iostream> \n\nint main() { \n\n  std::cout << "Hello, World!"; \n\n  return 0; \n\n}',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: TextStyle(
                                        //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.014),
                                  ),

                                  //Assembly
                                  TypewriterAnimatedText(
                                    '.section .data \n\nmessage: \n\n    .ascii "Hello, World!" \n\n \n\n.section .text\n\n.global _start \n\n_start: \n\n    mov rax, 1 \n\n    mov rdi, 1 \n\n    mov rsi, message \n\n    mov rdx, 14 \n\n    syscall \n\n    mov rax, 60 \n\n    mov rdi, 0 \n\n    syscall \n\n',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: TextStyle(
                                        //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.014),
                                  ),

                                  //html,css
                                  TypewriterAnimatedText(
                                    '<!DOCTYPE html> \n\n<html> \n\n  <head> \n\n    <title>Hello, World!</title> \n\n  </head> \n\n  <body> \n\n    <h1>Hello, World!</h1> \n\n  </body> \n\n</html>',
                                    speed: const Duration(milliseconds: 100),
                                    textStyle: const TextStyle(
                                        color: Color.fromARGB(255, 0, 94, 5),
                                        fontSize: 18),
                                  ),
                                ],
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.redAccent,
                child: Center(
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.width * 0.11,
                        left: MediaQuery.of(context).size.width * 0.2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.width * 0.18,
                        left: MediaQuery.of(context).size.width * 0.3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 207, 90),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
