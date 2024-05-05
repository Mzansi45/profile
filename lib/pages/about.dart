import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final List<Widget> _hearts = [];

  //technical skills
  final Map<String, String> technicalSkills = {
    'Java':
        'Created and deployed a RESTful API using Spring Boot, and have experience with JavaFX.',
    'Spring': 'Created and deployed a RESTful API using Spring Boot.',
    'SQL': 'Created and managed databases using MySQL and MSSQL.',
    'Flutter':
        'Developed mobile applications for Android and iOS using Flutter. Fun fact: This website was built using Flutter!',
    'Web': 'Developed web applications using HTML, CSS, and JavaScript.',
    'Python':
        'In the process of learning Python by using it to automate tasks and create simple applications.',
    'Csharp': 'Worked on VR projects using Unity and C#.',
    'Unity': 'Worked on VR projects using Unity and C#.',
    'Docker':
        'In the process of learning Docker by creating and deploying containers.',
    'Git': 'Used Git for version control in various projects.',
  };

  //icon assets
  final List<String> imageIcons = [
    'assets/icons/csharp.png',
    'assets/icons/docker.png',
    'assets/icons/flutter.png',
    'assets/icons/git.png',
    'assets/icons/java.png',
    'assets/icons/python.png',
    'assets/icons/spring_boot.png',
    'assets/icons/unity.png',
    'assets/icons/web_dev.png',
    'assets/icons/sql.png',
  ];

  //soft skills
  final Map<String, String> softSkills = {
    'Problem Solving':
        'I enjoy solving problems and puzzles, and I am always eager to learn new things.',
    'Teamwork':
        'I work well in a team and enjoy collaborating with others to achieve a common goal.',
    'Communication':
        'I have excellent communication skills and can effectively convey ideas and information to others.',
    'Time Management':
        'I am able to manage my time effectively and prioritize tasks to meet deadlines.',
    'Adaptability':
        'I am adaptable and can quickly adjust to new situations and environments.',
    'Creativity':
        'I am creative and enjoy thinking outside the box to come up with innovative solutions.',
  };

  final Map<String, IconData> icons = {
    'Problem Solving': Icons.build,
    'Teamwork': Icons.group,
    'Communication': Icons.chat,
    'Time Management': Icons.access_time,
    'Adaptability': Icons.settings,
    'Creativity': Icons.palette,
  };

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width <= 1000) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Text(
            'Hello! I\'m Thulani, a versatile software developer proficient in mobile development with Flutter and Xamarin, web development using HTML, CSS, and JavaScript, database management with SQL, backend development with Java and Spring Boot, and game development with Unity and C#. With a strong foundation in software engineering principles, I specialize in crafting seamless user experiences and scalable solutions across various platforms. Whether it\'s building intuitive mobile apps, dynamic web applications, robust backend systems, or captivating games, I bring creativity, expertise, and a passion for innovation to every project I undertake.',
            style: TextStyle(
                //fontSize: MediaQuery.sizeOf(context).width * 0.014,
                fontSize: 10,
                color: Theme.of(context).colorScheme.primary),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          //soft skills
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CommentTreeWidget<Comment, Comment>(
              Comment(
                  avatar: 'Soft Skills',
                  userName: 'Soft Skills',
                  content: 'null'),
              [
                for (String skill in softSkills.keys)
                  Comment(
                      avatar: 'null',
                      userName: skill,
                      content: softSkills[skill]!),
              ],
              treeThemeData: TreeThemeData(
                  lineColor: Theme.of(context).colorScheme.tertiary,
                  lineWidth: 1),
              avatarRoot: (context, data) => const PreferredSize(
                preferredSize: Size.fromRadius(18),
                child: CircleAvatar(
                  radius: 18,
                  child: Icon(Icons.supervisor_account_outlined),
                ),
              ),
              avatarChild: (context, data) =>  PreferredSize(
                preferredSize: const Size.fromRadius(12),
                child: CircleAvatar(
                  radius: 12,
                  child: Icon(icons[data.userName]),
                ),
              ),
              contentChild: (context, data) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          data.userName!,
                          textAlign: TextAlign.start,
                          style:TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              //fontSize: MediaQuery.sizeOf(context).width * 0.008,
                              fontSize: 17),
                        ),
                        const Spacer()
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              '\u2022 ${data.content!}',
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  //color: Theme.of(context).colorScheme.shadow,
                                  //fontSize: MediaQuery.sizeOf(context).width * 0.008,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              contentRoot: (context, data) {
                return Text(data.userName!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      //fontSize: MediaQuery.sizeOf(context).width * 0.009
                      fontSize: 20,
                      color: Colors.white,
                      //color: Theme.of(context).colorScheme.background
                    ));
              },
            ),
          ),

          //technical skills
          Center(
            child: Wrap(
              children: [
                for (int x = 0; x < technicalSkills.length; x++)
                  Container(
                    width: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).width * 0.4 : MediaQuery.sizeOf(context).width * 0.3,
                    //height: MediaQuery.sizeOf(context).height * 0.2,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.tertiary,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          // Check if imageIcons is not empty before using firstWhere
                          imageIcons.isNotEmpty
                              ? imageIcons.firstWhere(
                                  (element) =>
                                      element.contains(technicalSkills.keys.elementAt(x).toLowerCase()),
                                  // Provide a default value in case no matching element is found
                                  orElse: () => 'assets/image/software.png',
                                )
                              : 'assets/image/software.png', // Use a default image path if imageIcons is empty
                          height: MediaQuery.of(context).size.height * 0.1,
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          technicalSkills.keys.elementAt(x),
                          style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).colorScheme.onBackground),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          technicalSkills.values.elementAt(x),
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    )  
                  )
              ]
            ),
          ),

        ]),
      );
    }

    return Stack(
      //main screen

      //floating widgets
      children: [
        SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.15,
                  right: MediaQuery.sizeOf(context).width * 0.15),
              child: Text(
                'Hello! I\'m Thulani, a versatile software developer proficient in mobile development with Flutter and Xamarin, web development using HTML, CSS, and JavaScript, database management with SQL, backend development with Java and Spring Boot, and game development with Unity and C#. With a strong foundation in software engineering principles, I specialize in crafting seamless user experiences and scalable solutions across various platforms. Whether it\'s building intuitive mobile apps, dynamic web applications, robust backend systems, or captivating games, I bring creativity, expertise, and a passion for innovation to every project I undertake.',
                style: TextStyle(
                    //fontSize: MediaQuery.sizeOf(context).width * 0.014,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.primary),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            Text("Soft Skills",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.onBackground,
                )),

            //soft skills
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.1,
                  right: MediaQuery.sizeOf(context).width * 0.1,
                  top: 10.0,
                  bottom: 10.0),
              child: Wrap(
                children: [
                  for (var skill in softSkills.keys)
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      //height: MediaQuery.sizeOf(context).height * 0.1,
                      color: Theme.of(context).colorScheme.secondary,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      child: SingleChildScrollView(
                        child: CommentTreeWidget<Comment, Comment>(
                          Comment(
                              avatar: 'Skill',
                              userName: skill,
                              content: softSkills[skill]!),
                          [
                            Comment(
                                avatar: 'null',
                                userName: skill,
                                content: softSkills[skill]!),
                          ],
                          treeThemeData: TreeThemeData(
                              lineColor: Theme.of(context).colorScheme.tertiary,
                              lineWidth: 1),
                          avatarRoot: (context, data) => const PreferredSize(
                            preferredSize: Size.fromRadius(2),
                            child: CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                          avatarChild: (context, data) => const PreferredSize(
                            preferredSize: Size.fromRadius(2),
                            child: CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                          contentChild: (context, data) {
                            return SingleChildScrollView(
                              child: Text(
                                data.content!,
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.shadow,
                                    //fontSize: MediaQuery.sizeOf(context).width * 0.008,
                                    fontSize: 17),
                              ),
                            );
                          },
                          contentRoot: (context, data) {
                            return Text(data.userName!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    //fontSize: MediaQuery.sizeOf(context).width * 0.009
                                    fontSize: 20,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background));
                          },
                        ),
                      ),
                    )
                ],
              ),
            ),

            Text("Technical Skills",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.onBackground,
                )),
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.1,
                  right: MediaQuery.sizeOf(context).width * 0.1,
                  top: MediaQuery.sizeOf(context).height * 0.05,
                  bottom: MediaQuery.sizeOf(context).height * 0.05),
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    ...technicalSkills.keys.map((skill) {
                      return GestureDetector(
                        onTap: () {
                          Image image = Image.asset(
                            // Check if imageIcons is not empty before using firstWhere
                            imageIcons.isNotEmpty
                                ? imageIcons.firstWhere(
                                    (element) =>
                                        element.contains(skill.toLowerCase()),
                                    // Provide a default value in case no matching element is found
                                    orElse: () => 'default_image_path.png',
                                  )
                                : 'default_image_path.png', // Use a default image path if imageIcons is empty
                            height: MediaQuery.of(context).size.height * 0.1,
                            fit: BoxFit.scaleDown,
                          );

                          if (mounted) {
                            // Check if the widget is still mounted
                            setState(() {
                              _hearts.add(FloatingHearts(
                                  key: UniqueKey(),
                                  image:
                                      image)); // Use UniqueKey for each heart
                            });
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(5),
                          //height: MediaQuery.of(context).size.height * 0.255,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.tertiary,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Wrap(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                      top: MediaQuery.of(context).size.height *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.01,
                                      right: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: Image.asset(
                                    // Check if imageIcons is not empty before using firstWhere
                                    imageIcons.isNotEmpty
                                        ? imageIcons.firstWhere(
                                            (element) => element
                                                .contains(skill.toLowerCase()),
                                            // Provide a default value in case no matching element is found
                                            orElse: () =>
                                                'default_image_path.png',
                                          )
                                        : 'default_image_path.png', // Use a default image path if imageIcons is empty
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              //const SizedBox(height: 10),
                              /*Text(
                                skill,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground),
                              ),*/
                              const SizedBox(height: 10),
                              Text(
                                technicalSkills[skill]!,
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ]),
        ),
        ..._hearts,
      ],
    );
  }
}

class FloatingHearts extends StatefulWidget {
  final Image image;
  const FloatingHearts({
    super.key,
    required this.image,
  });

  @override
  _FloatingHeartsState createState() => _FloatingHeartsState();
}

class _FloatingHeartsState extends State<FloatingHearts>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late double _left;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.0, 1),
      end: const Offset(0.0, -30.0),
    ).animate(_controller)
      ..addListener(() {
        setState(() {}); // Trigger rebuild for animation changes
      });

    _controller.forward();

    _left = Random().nextDouble() * 1100;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _left,
      bottom: 0.0,
      child: SlideTransition(
        position: _animation,
        child: widget.image,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
