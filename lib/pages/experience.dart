import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Center(
        child: ListView(children: [
          TimelineTile(
            isFirst: true,
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Container(
              child: Text('2018-2020'),
            ),
            endChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 1'),
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 2'),
              ),
            ),
            endChild: Center(
              child: Text('2020-2021'),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Container(
              child: Text('2018-2020'),
            ),
            endChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 3'),
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 4'),
              ),
            ),
            endChild: Center(
              child: Text('2020-2021'),
            ),
          ),
          TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Container(
              child: Text('2018-2020'),
            ),
            endChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 1'),
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 2'),
              ),
            ),
            endChild: Center(
              child: Text('2020-2021'),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            startChild: Container(
              child: Text('2018-2020'),
            ),
            endChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 3'),
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            color: Colors.purple,
          ),
          TimelineTile(
            isLast: true,
            alignment: TimelineAlign.manual,
            afterLineStyle: const LineStyle(
              thickness: 2,
            ),
            beforeLineStyle: const LineStyle(
              thickness: 2,
            ),
            lineXY: 0.9,
            startChild: Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text('Company 4'),
              ),
            ),
            endChild: Center(
              child: Text('2020-2021'),
            ),
          ),
        ]),
      ),
    );
  }
}
