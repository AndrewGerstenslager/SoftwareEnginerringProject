import 'package:flutter/material.dart';
import 'AssignmentInfo.dart';

//Properties
const textColor = Colors.white;

//Functions

getAssignmentWidget(List<String> list, String title) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          height: (60.0 * list.length),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                color: textColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
                children: list
                    .map(
                      (i) => Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          i.toString(),
                          style: const TextStyle(
                            color: textColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                    .toList()),
          ),
        ),
      ],
    ),
  );
}

//Classes

class ToDoTab extends StatelessWidget {
  const ToDoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Next Assignment Due:",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  incompleteAssignments[0],
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Number of Assignments Due:",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  incompleteAssignments.length.toString(),
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      getAssignmentWidget(incompleteAssignments, "Assignments to Complete:"),
    ]));
  }
}

class CompletedTab extends StatelessWidget {
  const CompletedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Number of Assignments Completed:",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  completedAssignments.length.toString(),
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      getAssignmentWidget(completedAssignments, "Assignments Completed:"),
    ]));
  }
}
