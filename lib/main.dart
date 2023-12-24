import 'package:flutter/material.dart';
import 'story.dart';
import 'stroyBrain.dart';

void main() {
  runApp(destination());
}

StoryBrain storyBrain = StoryBrain();

class destination extends StatelessWidget {
  const destination({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: storypage(),
    );
  }
}

class storypage extends StatefulWidget {
  const storypage({super.key});

  @override
  State<storypage> createState() => _storypageState();
}

class _storypageState extends State<storypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    setState(() {
                      storyBrain.nextstory(1);
                    });
                  },
                  child: Text(
                    storyBrain.getchoice1(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: Visibility(
                  visible: storyBrain.buttonShouldbevisible(),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextstory(2);
                      });
                    },
                    child: Text(
                      storyBrain.getchoice2(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
