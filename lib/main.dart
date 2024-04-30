import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:floating_action_bubble_custom/floating_action_bubble_custom.dart';
import 'package:flutter/material.dart';
import 'package:profile/pages/about.dart';
import 'package:profile/pages/contact.dart';
import 'package:profile/pages/experience.dart';
import 'package:profile/pages/home.dart';
import 'package:profile/pages/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          background: Colors.black,
          brightness: Brightness.dark,
          error: Colors.red,
          onBackground: Colors.white,
          onError: Colors.red,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white54,
          primary: Colors.white60,
          secondary: Colors.grey[850]!,
          surface: Colors.black,
          tertiary: const Color.fromARGB(255, 194, 61, 0),
        ),
      ),
      home: const Main(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  late PageController _pageController;
  int _currentPageIndex = 3;

  List<String> pagesName = [
    'Home',
    'About',
    'Experience',
    'Services',
    'Contact',
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    final curvedAnimation = CurvedAnimation(
      //curve: Curves.easeInOut,
      curve: Curves.ease,
      parent: _animationController,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    _pageController = PageController(
      initialPage: 3,
      keepPage: true,
    );
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });
  }

  //map of pages and their widgets
  List<Widget> pages = [
    const Home(),
    const About(),
    const Experience(),
    const Service(),
    const Contact(),
  ];

  Widget makeIcon(int index) {
    late IconData icon;
    switch (index) {
      case 0:
        icon = Icons.home;
        break;
      case 1:
        icon = Icons.info;
        break;
      case 2:
        icon = Icons.work;
        break;
      case 3:
        icon = Icons.design_services;
        break;
      case 4:
        icon = Icons.contact_page;
        break;
      default:
        icon = Icons.error;
        break;
    }

    // tap an color current page icon
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentPageIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 2000),
            //curve: Curves.easeInOut,
            curve: Curves.ease,
          );
          _animationController.reverse();
        });
      },
      child: Icon(
        icon,
        color: index == _currentPageIndex ? Colors.blue : Colors.grey,
      ),
    );
  }

  bool hovering = false;
  late List<bool> hoveringStates = List.generate(5, (_) => false);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pagesName[_currentPageIndex],
            style: const TextStyle(color: Colors.white)),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
        actions: [
          if (MediaQuery.sizeOf(context).width > 600)
            for (int i = 0; i < pages.length; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentPageIndex = i;
                    _pageController.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 2000),
                      //curve: Curves.easeInOut,
                      curve: Curves.ease,
                    );
                    _animationController.reverse();
                  });
                },
                child: MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      hoveringStates[i] = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      hoveringStates[i] = false;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.height * 0.05,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      border: MediaQuery.sizeOf(context).width < 600
                          ? null
                          : Border(
                              bottom: BorderSide(
                                color: hoveringStates[i]
                                    ? Colors.blue
                                    : const Color.fromARGB(255, 194, 61, 0),
                                width:
                                    hoveringStates[i] || i == _currentPageIndex
                                        ? 4
                                        : 0.5,
                              ),
                            ),
                    ),
                    child: Center(
                      child: MediaQuery.of(context).size.width < 600
                          ? makeIcon(i)
                          : i == _currentPageIndex
                              ? AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText(
                                      pagesName[i],
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        //fontSize: MediaQuery.of(context).size.width * 0.011,
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                  ],
                                  totalRepeatCount: 50000,
                                  onTap: () {
                                    setState(() {
                                      _currentPageIndex = i;
                                      _pageController.animateToPage(
                                        i,
                                        duration:
                                            const Duration(milliseconds: 2000),
                                        //curve: Curves.easeInOut,
                                        curve: Curves.ease,
                                      );
                                      _animationController.reverse();
                                    });
                                  },
                                )
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentPageIndex = i;
                                      _pageController.animateToPage(
                                        i,
                                        duration:
                                            const Duration(milliseconds: 2000),
                                        //curve: Curves.easeInOut,
                                        curve: Curves.ease,
                                      );
                                      _animationController.reverse();
                                    });
                                  },
                                  child: Text(
                                    pagesName[i],
                                    style: TextStyle(
                                        //fontSize: MediaQuery.of(context).size.width *0.009,
                                        fontSize: 17),
                                  ),
                                ),
                    ),
                  ),
                ),
              )
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: PageView.builder(
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
      ),
      floatingActionButton: MediaQuery.sizeOf(context).width <= 600
          ? FloatingActionBubble(
              animation: _animation,
              onPressed: () => _animationController.isCompleted
                  ? _animationController.reverse()
                  : _animationController.forward(),
              iconColor: const Color.fromARGB(255, 202, 197, 194),
              animatedIconData: AnimatedIcons.menu_close,
              highlightElevation: 0,
              elevation: 0.1,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              items: [
                for (int i = 0; i < pages.length; i++)
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        hoveringStates[i] = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        hoveringStates[i] = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.11,
                      height: MediaQuery.of(context).size.height * 0.05,
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: MediaQuery.sizeOf(context).width < 600
                            ? null
                            : Border(
                                bottom: BorderSide(
                                  color: hoveringStates[i]
                                      ? Colors.blue
                                      : const Color.fromARGB(255, 194, 61, 0),
                                  width: hoveringStates[i] ||
                                          i == _currentPageIndex
                                      ? 4
                                      : 0.5,
                                ),
                              ),
                      ),
                      child: Center(
                        child: MediaQuery.of(context).size.width < 600
                            ? makeIcon(i)
                            : i == _currentPageIndex
                                ? AnimatedTextKit(
                                    animatedTexts: [
                                      WavyAnimatedText(
                                        pages[i].toString(),
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                    totalRepeatCount: 100,
                                    onTap: () {
                                      setState(() {
                                        _currentPageIndex = i;
                                        _pageController.animateToPage(
                                          i,
                                          duration: const Duration(
                                              milliseconds: 2000),
                                          //curve: Curves.easeInOut,
                                          curve: Curves.ease,
                                        );
                                        _animationController.reverse();
                                      });
                                    },
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _currentPageIndex = i;
                                        _pageController.animateToPage(
                                          i,
                                          duration: const Duration(
                                              milliseconds: 2000),
                                          //curve: Curves.easeInOut,
                                          curve: Curves.ease,
                                        );
                                        _animationController.reverse();
                                      });
                                    },
                                    child: Text(
                                      pages[i].toString(),
                                    ),
                                  ),
                      ),
                    ),
                  )
              ],
            )
          : null,
    );
  }
}
