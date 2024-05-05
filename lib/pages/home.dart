import 'dart:io';
import 'dart:typed_data';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path_provider/path_provider.dart';

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

  Future<void> _downloadResume(BuildContext context) async {
    try {
      // Load the PDF file from assets
      ByteData data =
          await rootBundle.load('Thulani_Gulube_May_2024_Resume.pdf');

      // Get the temporary directory path
      Directory tempDir = await getTemporaryDirectory();
      String tempPath = tempDir.path;

      // Write the PDF file to the temporary directory
      File tempFile = File('$tempPath/resume.pdf');
      await tempFile.writeAsBytes(data.buffer.asUint8List());

      // Open the PDF file using the default PDF viewer
      ProcessResult result = await Process.run('open', [tempFile.path]);
      if (result.exitCode != 0) {
        throw Exception('Failed to open PDF file');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to download resume: $e'),
        ),
      );
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 1000) {
      return Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(31, 226, 219, 219),
                        width: 2,
                      ),
                    ),
                    //flutter
                    //child: Image.asset('assets/icons/flutter.png', fit: BoxFit.contain),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.15,
                  bottom: MediaQuery.of(context).size.height * 0.09,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(31, 226, 219, 219),
                        width: 2,
                      ),
                    ),
                    //java
                    child: Image.asset('assets/icons/java.png',
                        fit: BoxFit.contain),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.15 * 2,
                  bottom: MediaQuery.of(context).size.height * 0.09 * 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(31, 226, 219, 219),
                        width: 2,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.15 * 3.6,
                    height: MediaQuery.of(context).size.height * 0.09 * 3.55,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Container(
                          //constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height) * 0.45,
                          margin: const EdgeInsets.all(20),
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Agne',
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                //Java
                                TypewriterAnimatedText(
                                  'public class HelloWorld { \n\n  public static void main(String[] args) { \n         System.out.println("Hello, World!"); \n  } \n\n}',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
                                ),

                                //Python
                                TypewriterAnimatedText(
                                  'print("Hello, World!")',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
                                ),

                                //JavaScript
                                TypewriterAnimatedText(
                                  'console.log("Hello, World!");',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
                                ),

                                //C#
                                TypewriterAnimatedText(
                                  'using System; \n\nnamespace HelloWorld { \n\n  class Program { \n\n    static void Main(string[] args) { \n\n      Console.WriteLine("Hello, World!"); \n\n    } \n\n  } \n\n}',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
                                ),

                                //C++
                                TypewriterAnimatedText(
                                  '#include <iostream> \n\nint main() { \n\n  std::cout << "Hello, World!"; \n\n  return 0; \n\n}',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
                                ),

                                //Assembly
                                TypewriterAnimatedText(
                                  '.section .data \n\nmessage: \n\n    .ascii "Hello, World!" \n\n \n\n.section .text\n\n.global _start \n\n_start: \n\n    mov rax, 1 \n\n    mov rdi, 1 \n\n    mov rsi, message \n\n    mov rdx, 14 \n\n    syscall \n\n    mov rax, 60 \n\n    mov rdi, 0 \n\n    syscall \n\n',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      //color: Color.fromARGB(255, 194, 61, 0), fontSize: 18),
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
                                ),

                                //html,css
                                TypewriterAnimatedText(
                                  '<!DOCTYPE html> \n\n<html> \n\n  <head> \n\n    <title>Hello, World!</title> \n\n  </head> \n\n  <body> \n\n    <h1>Hello, World!</h1> \n\n  </body> \n\n</html>',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 0, 94, 5),
                                      fontSize: 10),
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          // Hello, I'm
          Row(
            children: [
              const Text(
                'Hello',
                style: TextStyle(
                  //fontSize: MediaQuery.of(context).size.width * 0.016,
                  fontSize: 20,
                ),
              ),
              Text(
                ', I\'m',
                style: TextStyle(
                  //fontSize: MediaQuery.of(context).size.width * 0.016,
                  fontSize: 20,
                  color: Colors.grey[850],
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.004),

          // Thulani Gulube
          const Row(
            children: [
              Text(
                'Thulani Gulube',
                textAlign: TextAlign.start,
                style: TextStyle(
                  //fontSize: MediaQuery.of(context).size.width * 0.02,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 194, 61, 0),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),

          // Software Engineer/Developer | Software Architect
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Software Engineer/Developer | Software Architect',
                  style: TextStyle(
                    //fontSize: MediaQuery.of(context).size.width * 0.016,
                    fontSize: 15,
                  ),
                ),
              ),
              //Spacer(),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.008),

          // about summary
          Row(
            children: [
              Expanded(
                child: Wrap(
                  children: [
                    Text(
                      'I am a software engineer/developer and software architect with a passion for building software solutions that solve real-world problems. I have experience in building web and mobile applications, and I am always looking to learn new technologies and improve my skills.',
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey[850],
                          //fontSize: MediaQuery.of(context).size.width * 0.01,
                          fontSize: 13),
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
              ElevatedButton.icon(
                onPressed: () {
                  _downloadResume(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        //tertiary color
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ),
                ),
                icon: Icon(Icons.download),
                label: Text('Resume'),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          // Social Media Icons
          Row(
            children: [
              const Spacer(),
              const Text('Socials: ',
                  style: TextStyle(
                      //fontSize: MediaQuery.of(context).size.width * 0.016
                      fontSize: 20)),
              // LinkedIn, GitHub, X
              Tooltip(
                message: 'LinkedIn',
                child: IconButton(
                  onPressed: () {
                    //redirect to LinkedIn website
                    _launchUrl('https://www.linkedin.com/in/mzansi45/');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 20,
                    color: Colors.blue,
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
                    size: 20,
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
                    size: 20,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ]),
      );
    }

    return Center(
      child: Row(
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
                        const Text(
                          'Hello',
                          style: TextStyle(
                            //fontSize: MediaQuery.of(context).size.width * 0.016,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          ', I\'m',
                          style: TextStyle(
                            //fontSize: MediaQuery.of(context).size.width * 0.016,
                            fontSize: 25,
                            color: Colors.grey[850],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.004),

                    // Thulani Gulube
                    const Row(
                      children: [
                        Text(
                          'Thulani Gulube',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            //fontSize: MediaQuery.of(context).size.width * 0.02,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 194, 61, 0),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    // Software Engineer/Developer | Software Architect
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Software Engineer/Developer | Software Architect',
                            style: TextStyle(
                              //fontSize: MediaQuery.of(context).size.width * 0.016,
                              fontSize: 20,
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
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.grey[850],
                                    //fontSize: MediaQuery.of(context).size.width * 0.01,
                                    fontSize: 18),
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
                            onPressed: () {
                              _downloadResume(context);
                            },
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
                        const Text('Socials:   ',
                            style: TextStyle(
                                //fontSize: MediaQuery.of(context).size.width * 0.016
                                fontSize: 30)),
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
                                        color:
                                            const Color.fromARGB(255, 0, 94, 5),
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
                                        color:
                                            const Color.fromARGB(255, 0, 94, 5),
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
                                        color:
                                            const Color.fromARGB(255, 0, 94, 5),
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
                                        color:
                                            const Color.fromARGB(255, 0, 94, 5),
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
                                        color:
                                            const Color.fromARGB(255, 0, 94, 5),
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
                                        color:
                                            const Color.fromARGB(255, 0, 94, 5),
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
      ),
    );
  }
}
