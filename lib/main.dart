/*
1.[ Draft Design ]
2.Draft Implimentation - Use Best Practice 
3.Modify Design like Professional App - Use Best Practice 
4.Focus On Design & Data Model- Use Best Practice 
5.Implement Data Model - Use Best Practice 
6.Add Functionality - Use Best Practice 
7.Make the design like pro - Use Best Practice 
*/

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Working',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          circularTrackColor: Colors.white70,
          color: Colors.black54,
        ),
      ),
      home: TableQuizScreen(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.62;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3416667, size.height * 0.4357143);
    path0.lineTo(size.width * 0.3441667, size.height * 0.4000000);
    path0.lineTo(size.width * 0.3483333, size.height * 0.3671429);
    path0.lineTo(size.width * 0.3541667, size.height * 0.3328571);
    path0.lineTo(size.width * 0.3533333, size.height * 0.3157143);
    path0.lineTo(size.width * 0.3533333, size.height * 0.2957143);
    path0.lineTo(size.width * 0.3533333, size.height * 0.2714286);
    path0.lineTo(size.width * 0.3533333, size.height * 0.2471429);
    path0.lineTo(size.width * 0.3600000, size.height * 0.2142857);
    path0.lineTo(size.width * 0.3758333, size.height * 0.2071429);
    path0.lineTo(size.width * 0.3908333, size.height * 0.2071429);
    path0.lineTo(size.width * 0.4175000, size.height * 0.2457143);
    path0.lineTo(size.width * 0.4183333, size.height * 0.2842857);
    path0.lineTo(size.width * 0.4116667, size.height * 0.3271429);
    path0.lineTo(size.width * 0.4016667, size.height * 0.3485714);
    path0.lineTo(size.width * 0.3975000, size.height * 0.3985714);
    path0.lineTo(size.width * 0.4075000, size.height * 0.4185714);
    path0.lineTo(size.width * 0.4283333, size.height * 0.4471429);
    path0.lineTo(size.width * 0.4508333, size.height * 0.4471429);
    path0.lineTo(size.width * 0.4766667, size.height * 0.4257143);
    path0.lineTo(size.width * 0.4791667, size.height * 0.3957143);
    path0.lineTo(size.width * 0.4783333, size.height * 0.3500000);
    path0.lineTo(size.width * 0.4691667, size.height * 0.3028571);
    path0.lineTo(size.width * 0.4691667, size.height * 0.2700000);
    path0.lineTo(size.width * 0.4716667, size.height * 0.2400000);
    path0.lineTo(size.width * 0.4791667, size.height * 0.2157143);
    path0.lineTo(size.width * 0.4941667, size.height * 0.2014286);
    path0.lineTo(size.width * 0.5133333, size.height * 0.2014286);
    path0.lineTo(size.width * 0.5316667, size.height * 0.2085714);
    path0.lineTo(size.width * 0.5416667, size.height * 0.2285714);
    path0.lineTo(size.width * 0.5516667, size.height * 0.2600000);
    path0.lineTo(size.width * 0.5541667, size.height * 0.2900000);
    path0.lineTo(size.width * 0.5491667, size.height * 0.3142857);
    path0.lineTo(size.width * 0.5450000, size.height * 0.3414286);
    path0.lineTo(size.width * 0.5450000, size.height * 0.3728571);
    path0.lineTo(size.width * 0.5425000, size.height * 0.4228571);
    path0.lineTo(size.width * 0.5425000, size.height * 0.4500000);
    path0.lineTo(size.width * 0.5583333, size.height * 0.4700000);
    path0.lineTo(size.width * 0.5800000, size.height * 0.4728571);
    path0.lineTo(size.width * 0.5916667, size.height * 0.4585714);
    path0.lineTo(size.width * 0.5975000, size.height * 0.4300000);
    path0.lineTo(size.width * 0.6083333, size.height * 0.3942857);
    path0.lineTo(size.width * 0.6216667, size.height * 0.3385714);
    path0.lineTo(size.width * 0.6216667, size.height * 0.3057143);
    path0.lineTo(size.width * 0.6233333, size.height * 0.2700000);
    path0.lineTo(size.width * 0.6283333, size.height * 0.2385714);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  List<int> myInts = [0, 5, 1, 2, 3, 4];
  @override
  void initState() {
    myInts.insert(0, 8 * myInts.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: myInts.length,
        reverse: true,
        itemBuilder: itemBuilder,
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.all(
        16,
      ),
      color: Color.fromARGB(
        index + 100,
        index * 20 + 200,
        index * 13 + 300,
        index * 4 + 400,
      ),
      child: Text(
        "${myInts[index]}",
        style: const TextStyle(
          fontSize: 466,
          fontWeight: FontWeight.bold,
        ),
      ),

      //color: Colors.red,
    );
  }
}

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({
    Key? key,
  }) : super(key: key);

  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // _isLoading = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : Container(),
    );
  }
}

class FlexContainers extends StatelessWidget {
  const FlexContainers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff808080),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xffA00000),
              margin: EdgeInsets.all(16),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              color: Color(0xff801080),
              margin: EdgeInsets.all(16),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              color: Color(0xff003880),
              margin: EdgeInsets.all(16),
            ),
          )
        ],
      ),
    );
  }
}

class VideoView extends StatefulWidget {
  final String? videoUrl;
  const VideoView({
    Key? key,
    this.videoUrl,
  }) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool isLoading = true;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    setState(() {
      isLoading = false;
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .45,
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        Positioned(
          right: 0.0,
          bottom: -1.0,
          child: ElevatedButton.icon(
            // style: ButtonStyle(
            //   shape: MaterialStateProperty.all(
            //     CircleBorder(),
            //   ),
            // ),
            onPressed: () {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                // If the video is paused, play it.
                _controller.play();
              }
              setState(() {});
            },
            icon: _controller.value.isPlaying
                ? Icon(Icons.pause)
                : Icon(
                    Icons.play_arrow,
                  ),
            label: _controller.value.isPlaying
                ? Text(
                    "Pause",
                  )
                : Text(
                    "Play ",
                  ),
          ),
        ),
      ],
    );
  }
}

class QuestionView extends StatefulWidget {
  final String option;
  final String? question;
  final String optionIndex;
  const QuestionView({
    Key? key,
    required this.option,
    this.question,
    required this.optionIndex,
  }) : super(key: key);

  @override
  _QuestionViewState createState() => _QuestionViewState();
}

///enum Options { Stack, Queue, LinkedList }

class _QuestionViewState extends State<QuestionView> {
  bool checkBoxCurrentValue = false;
  Color colour = Colors.grey;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OptionView1(
      option: widget.option,
      onChanged: () {
        checkBoxCurrentValue = checkBoxCurrentValue ? false : true;
        colour = (checkBoxCurrentValue) ? const Color(0xFF6A2D88) : Colors.grey;
        checkBoxCurrentValue
            ? print("${widget.option} Selected")
            : print("${widget.option} Not Selected");
        setState(() {});
      },
      checkBoxCurrentValue: checkBoxCurrentValue,
      colour: colour,
      optionIndex: widget.optionIndex,
    );
  }
}

class OptionView1 extends StatelessWidget {
  final String option;
  final Function() onChanged;
  final bool checkBoxCurrentValue;
  final Color colour;
  final String optionIndex;
  const OptionView1({
    Key? key,
    required this.option,
    required this.onChanged,
    required this.colour,
    required this.checkBoxCurrentValue,
    required this.optionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        //width: MediaQuery.of(context).size.width / 3,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(
            32,
          ),
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            CircleAvatar(
              child: Text(optionIndex),
            ),
            Text(
              option,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black38,
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Pro",
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constaints) =>
            (constaints.maxWidth > 1.75 * constaints.maxHeight)
                ? Flex(
                    //direction: Axis.horizontal,
                    direction: Axis.horizontal,
                    children: const [
                      MyContainer(),
                      MyContainer(
                        colour: Colors.red,
                      ),
                    ],
                  )
                : Flex(
                    direction: Axis.vertical,
                    children: const [
                      MyContainer(
                        colour: Colors.yellow,
                      ),
                      MyContainer(),
                    ],
                  ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Widget? child;
  final Color? colour;
  final bool isLoading;
  const MyContainer(
      {Key? key,
      this.colour = Colors.black45,
      this.child,
      this.isLoading = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Flexible(
        child: Banner(
          location: BannerLocation.topStart,
          message: "Banner",
          child: Container(
            alignment: Alignment.center,
            color: colour,
            margin: const EdgeInsets.all(
              8,
            ),
            padding: const EdgeInsets.all(
              8,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: isLoading ? CircularProgressIndicator.adaptive() : child,
          ),
        ),
      );
}

class Question {
  final String id;
  final List<String>? url;
  final String? questionDescription;
  final Map<String, bool> type;
  final Map<String, bool> questionType;
  final List<Option> options;
  Question(
    this.id,
    this.url,
    this.questionDescription,
    this.type,
    this.questionType,
    this.options,
  );
}

class Option {
  final String id;
  final List<String>? url;
  final String? optionDescription;
  final Map<String, bool> optionType;
  final List<String>? optionToFill;
  //final List<String> targetToDrag;
  //final
  Option(this.id, this.url, this.optionDescription, this.optionType,
      this.optionToFill);
}

final question1 = Question(
  "1",
  ["url", "url2"],
  "The length of the sides of the triangular park (fig 1) shown are 140 ft, 100 ft and 60 ft. An umbrella in thepark is made by stitching 10 triangular pieces of cloth (fig 2)  measuring 20cm, 50 cm and 50 cm and ofdifferent colours. Find:(i) The area of the park, and (ii) Cloth required to make the umbrella(x= Area of the park, y=  Area of each colour)",
  {"mcq": true, "dragdrop": false},
  {
    "text": true,
    "image": true,
  },
  [
    Option(
      "1",
      null,
      "A.x=1700√3m2, y= 200√6 cm2",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "2",
      null,
      "B.x= 1500√3m2, y= 300√6",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C.x= 1600√3m2, y= 300√6",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "4",
      null,
      "D.x= 1500√3m2,y= 200√6",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
  ],
);
final question2 = Question(
  "2",
  ["url"],
  "From a bus stand in Bangalore, if we buy 2 tickets to Malleswaram and 3 tickets toYeshwanthpur, the total cost is Rs: 46; but if we buy 3 tickets to Malleshwaram and 5 tickets toYeshwanthpur the total cost is Rs: 74. Find the fares from the bus stand to Malleshwaram, andto Yeswanthpur. (Fare to Malleswaram = x, Fare to Yeswanthpur = y)",
  {"mcq": true},
  {
    "text": true,
    "image": true,
  },
  [
    Option(
      "1",
      null,
      "A.x = 8; y = 10",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "2",
      null,
      "B.x = 10, y = 8",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C.x = 8, y = 8",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "4",
      null,
      "D.x = 10, y = 10",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
  ],
);
final question11 = Question(
  "11",
  null,
  "What is the prime factorisation of 1260?Enter your answer as a product of prime numbers.",
  {"subjective": true},
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      null,
      "A.x = 8; y = 10",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "2",
      null,
      "B.x = 10, y = 8",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C.x = 8, y = 8",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "4",
      null,
      "D.x = 10, y = 10",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
  ],
);
final question17 = Question(
  "17",
  null,
  "Consider the following expression and determine which statements are true m+(5n)(9−p)−6−r²Choose 2 answers.",
  {"subjective": true},
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      null,
      "a)The coefficient of the termmis 0",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "2",
      null,
      "b)The expression (5n) (9 - p) is the product",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "3",
      null,
      "c)The expression 5n is a difference between a coefficient and a variable",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "4",
      null,
      "d)The expression 9 - p  has exactly 2 terms",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
  ],
);

final question7 = Question(
  "7",
  null,
  "Find the figure that can be formed with line segments.",
  {
    "subjective": false,
    "dragdrop": true,
  },
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      ["url1"],
      "270⁰",
      {
        "text": false,
        "image": true,
      },
      null,
    ),
    Option(
      "2",
      ["url2"],
      "180⁰",
      {
        "text": false,
        "image": true,
      },
      null,
    ),
    Option(
      "3",
      ["url3"],
      "360⁰",
      {
        "text": false,
        "image": true,
      },
      null,
    ),
    Option(
      "4",
      ["url4"],
      "90⁰",
      {
        "text": false,
        "image": true,
      },
      null,
    ),
  ],
);
final question8 = Question(
  "8",
  ["question image url"],
  "Which shapes have an area of 3 square units? Choose 2 answers.",
  {
    "subjective": false,
    "dragdrop": false,
    "multipleanswer": true,
  },
  {
    "text": true,
    "image": true,
  },
  [
    Option(
      "1",
      ["url1"],
      null,
      {
        "text": false,
        "image": true,
      },
      null,
    ),
    Option(
      "2",
      ["url2"],
      null,
      {
        "text": false,
        "image": true,
      },
      null,
    ),
    Option(
      "3",
      ["url3"],
      null,
      {
        "text": false,
        "image": true,
      },
      null,
    ),
    Option(
      "4",
      ["url4"],
      null,
      {
        "text": false,
        "image": true,
      },
      null,
    ),
  ],
);
final question9 = Question(
  "9",
  null,
  "Factorise using the suitable algebraic identities to find P and Q.4x² + 4y² + z² + 8xy − 4yz − 4zx.When we factorise this is what we get,(Px + Qy + z)². Find the missing valuesP = ______Q = ______",
  {"mcq": true},
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      null,
      "A)2, -2",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "2",
      null,
      "B)2, 2",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C)-2, -2",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "4",
      null,
      "D)-2, 2",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
  ],
);
final question19 = Question(
  "19",
  null,
  "What type of a number is 1.0?\nChoose all the answers that apply:",
  {
    "multianswer": true,
    "mcq": false,
    "dragdrop": false,
    "subjective": false,
  },
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      null,
      "a) Rational",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "2",
      null,
      "b) Irrational",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "3",
      null,
      "c) Integers",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
    Option(
      "4",
      null,
      "d) Whole number",
      {
        "text": true,
        "image": false,
      },
      null,
    ),
  ],
);
final question14 = Question(
  "14",
  null,
  "Which of the following, statements are true:-\nI. Every chord of a circle is parallel to some diameter of the circle\nII. All the circles are similar\nIII. A radius is a chord of the circle,\nIV. Any two radii of a circle make up a diameter\nV. The diameter is twice the radius",
  {
    "mcq": true,
  }, //Type
  {
    "text": true,
  }, //Question Type
  [
    Option(
      "1",
      null,
      "A. I , II and V are true",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "2",
      null,
      "B. II, V are true",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C. I, IV and V are true",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "4",
      null,
      "D. II, III are true",
      {
        "text": true,
      },
      null,
    ),
  ],
);
final question12 = Question(
  "12",
  [],
  "DEFG is a cyclic quadrilateral. PDQ is a tangent at D. O is the centre of the circle. DEF is an isosceles triangle. Find angle a and angle b.",
  {
    "mcq": true,
  }, //Type
  {
    "text": true,
  }, //Question Type
  [
    Option(
      "1",
      null,
      "A. a = 112⁰ and b = 82⁰",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "2",
      null,
      "B. a = 88⁰ and b = 48⁰",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C. a = 98⁰ and b = 49⁰",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "4",
      null,
      "D. a = 108⁰ and b = 98⁰",
      {
        "text": true,
      },
      null,
    ),
  ],
);
final question10 = Question(
  "10",
  null,
  "Arrange the following in descending order. (Drag and drop)",
  {
    "dragdrop": true,
  },
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      null,
      null,
      {
        "text": false,
        "image": false,
      },
      [
        "382",
        "4972",
        "18",
        "59785",
        "750",
      ],
    ),
  ],
);
final question6 = Question(
  "6",
  [],
  "Drag and drop the angles to the respective diagrams.",
  {"dragdop": true},
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      [
        "target1",
        "target2",
        "target3",
        "target4",
        "target5",
        "target6",
      ],
      null,
      {
        "dragtexttoimage": true,
        "image": true,
      },
      ["270⁰", "180⁰", "360⁰", "90⁰", "Acute angle", " Obtuse angle"],
    ),
  ],
);
final question5 = Question(
  "5",
  ["imageUrl1"],
  "In fig., when the arrow moves from 6 to 9, it creates a right angle(90 degrees). If the right anglecreated is equivalent to 1/4th of a revolution, then rearrange the second column such that it matches the first column.",
  {
    "dragdrop": true,
  },
  {
    "image": true,
    "text": true,
  },
  [
    Option(
      "1",
      [],
      "Straight Angle",
      {
        "text": true,
        "image": false,
      },
      [
        "A < ¼th of a revolution",
      ],
    ),
    Option(
      "2",
      [],
      "2 Right Angle",
      {
        "text": true,
        "image": false,
      },
      [
        "B > ½ of a revolution",
      ],
    ),
    Option(
      "1",
      [],
      "3 Acute Angle",
      {
        "text": true,
        "image": false,
      },
      [
        "C ½ of a revolution",
      ],
    ),
    Option(
      "4",
      [],
      "4 Obtuse Angle",
      {
        "text": true,
        "image": false,
      },
      [
        "D Complete revolution",
      ],
    ),
    Option(
      "1",
      [],
      "5 Reflex Angle",
      {
        "text": true,
        "image": false,
      },
      [
        "E ¼th of a revolution",
      ],
    ),
    Option(
      "1",
      [],
      "6 Complete Angle",
      {
        "text": true,
        "image": false,
      },
      [
        "F Between ¼ and ½ of a revolution",
      ],
    ),
  ],
);
final question4 = Question(
  "4",
  null,
  "Identify the triangles",
  {
    "subjective": true,
  },
  {"text": true},
  [
    Option(
      "1",
      [
        "https://is5-ssl.mzstatic.com/image/thumb/Purple82/v4/e3/df/60/e3df601c-df5a-2461-5557-523b78e3e116/source/512x512bb.jpg"
      ],
      null,
      {},
      null,
    ),
    Option(
      "2",
      ["option2url1"],
      null,
      {},
      null,
    ),
    Option(
      "3",
      ["option3url1"],
      null,
      {},
      null,
    ),
    Option(
      "4",
      ["option4url1"],
      null,
      {},
      null,
    ),
    Option(
      "5",
      ["option5url1"],
      null,
      {},
      null,
    ),
    Option(
      "6",
      ["option6url1"],
      null,
      {},
      null,
    ),
    Option(
      "7",
      ["option7url1"],
      null,
      {},
      null,
    ),
    Option(
      "8",
      ["option8url1"],
      null,
      {},
      null,
    ),
  ],
);
final question3 = Question(
  "3",
  [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Angle_measure.svg/1600px-Angle_measure.svg.png",
    "https://www.rbjlabs.com/wp-content/uploads/2018/11/%C3%A1ngulo-obtuso.png",
    "https://i.ytimg.com/vi/922piI8SgXA/maxresdefault.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Angle_ex2.svg/1200px-Angle_ex2.svg.png"
  ],
  "How many angles have a measurement of more than 90 degrees?",
  {
    "mcq": true,
  },
  {
    "text": true,
    "image": true,
  },
  [
    Option(
      "1",
      null,
      "A. 1",
      {
        "text": true,
      },
      [],
    ),
    Option(
      "2",
      [],
      "B. 2",
      {
        "text": true,
      },
      null,
    ),
    Option(
      "3",
      null,
      "C. 3",
      {
        "text": true,
      },
      [],
    ),
    Option(
      "4",
      [],
      "D. 4",
      {
        "text": true,
      },
      null,
    ),
  ],
);
final question13 = Question(
  "13",
  [],
  "Complete the table. Each row represents a circle with a defined sector.x = {18⁰, 15⁰, 45⁰, 25⁰}, y = {8 cm, 4 cm, 5 cm, 6 cm}, z = { 6π cm², 4π cm², 2π cm², 8π cm²}(Drag and Drop)",
  {
    "dragdrop": true,
  },
  {
    "text": true,
    "image": false,
  },
  [
    Option("1", [], "5π cm² 5 cm x", {"text": true, "image": false},
        ["18⁰", "15⁰", "45⁰", "25⁰"]),
    Option("2", [], "12π cm² y 270⁰", {"text": true, "image": false},
        ["8 cm", "4 cm", "5 cm", "6 cm"]),
    Option("3", [], "Z 12 cm 15⁰", {"text": true, "image": false},
        ["6π cm²", "4π cm²", "2π cm²", " 8π cm²"]),
  ],
);
final question15 = Question(
  "15",
  ["imageurl1"],
  "",
  {
    "dragdrop": true,
  },
  {
    "text": true,
    "image": true,
  },
  [
    Option(
        "1",
        [],
        "A. Angle__ = angle f",
        {"text": true, "image": false},
        [
          "a⁰",
          "b⁰",
          "c⁰",
          "d⁰",
          "e⁰",
          "f⁰",
          "g⁰",
        ]),
    Option(
        "2",
        [],
        "B. Angle e = angle ___",
        {"text": true, "image": false},
        [
          "a⁰",
          "b⁰",
          "c⁰",
          "d⁰",
          "e⁰",
          "f⁰",
          "g⁰",
        ]),
    Option(
        "3",
        [],
        "C. Angle ___ = angle g = angle c",
        {"text": true, "image": false},
        [
          "a⁰",
          "b⁰",
          "c⁰",
          "d⁰",
          "e⁰",
          "f⁰",
          "g⁰",
        ]),
    Option(
        "3",
        [],
        "D. Angle a = angle ____ = angle c",
        {"text": true, "image": false},
        [
          "a⁰",
          "b⁰",
          "c⁰",
          "d⁰",
          "e⁰",
          "f⁰",
          "g⁰",
        ]),
  ],
);
final question18 = Question(
  "18",
  [],
  "On which axis do the following points lie?",
  {"dragdrop": true},
  {
    "text": true,
    "image": false,
  },
  [
    Option(
      "1",
      [],
      "P(5, 0)",
      {"text": true, "image": false},
      ["i) x-axis" "ii) y-axis"],
    ),
    Option(
      "2",
      null,
      "Q(0, -2)",
      {"text": true, "image": false},
      ["i) x-axis" "ii) y-axis"],
    ),
  ],
);
final question16 = Question(
  "16",
  [],
  "",
  {},
  {
    "text": true,
  },
  [
    Option("1", [], "x + 10 = 30, x = 30", {}, ["Yes", "No"]),
    Option("2", null, "x + 10 = 30 x = 20", {}, ["Yes", "No"]),
  ],
);

class QuizScreen1 extends StatefulWidget {
  const QuizScreen1({Key? key}) : super(key: key);

  @override
  _QuizScreen1State createState() => _QuizScreen1State();
}

class _QuizScreen1State extends State<QuizScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 50, 16, 0),
            //height: 200,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Text(
                question3.questionDescription!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: question3.url!.length,
              itemBuilder: questionImageItemBuilder,
            ),
          ),
          Expanded(
            child: Center(
              child: ListView.builder(
                itemCount: question3.options.length,
                itemBuilder: textOptionItemBuilder,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget questionImageItemBuilder(BuildContext context, int index) {
    return Image.network(question3.url![index]);
  }

  Widget textOptionItemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (v) {}),
          Text(
            question3.options[index].optionDescription!,
          ),
        ],
      ),
    );
  }
}

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({Key? key}) : super(key: key);

  @override
  _QuizScreen2State createState() => _QuizScreen2State();
}

class _QuizScreen2State extends State<QuizScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Card(
              child: Text(
                question4.questionDescription!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GridView.builder(
            itemCount: question4.options.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: imageOptionItemBuilder,
          )
        ],
      ),
    );
  }

  Widget imageOptionItemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(16),
      width: 200,
      child: Image.network(""),
    );
  }
}

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  _ExamScreenState createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  String questions = "";
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    loadQuestions();
  }

  loadQuestions() async {
    try {
      String jsonString = await rootBundle.loadString(
        "assets/jsons/prelims_wbcs_2008.json",
        cache: false,
      );
      questions = jsonString;
      isLoading = false;
    } catch (e) {
      isLoading = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                questions,
              ),
      ),
    );
  }
}

class TableQuizScreen extends StatefulWidget {
  const TableQuizScreen({Key? key}) : super(key: key);

  @override
  _TableQuizScreenState createState() => _TableQuizScreenState();
}

class _TableQuizScreenState extends State<TableQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Table(
            children: [
              TableRow(
                children: [
                  Container(
                    color: Colors.red,
                    child: Text(
                      "${window.devicePixelRatio}",
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text(
                      "${window.devicePixelRatio}",
                    ),
                  ),
                  DragTarget(
                    builder: (context, objList, dynamicList) {
                      return Container(
                        color: Colors.blue,
                        child: Text(
                          "Target",
                        ),
                      );
                    },
                  ),
                  Container(
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      "${window.devicePixelRatio}",
                    ),
                  )
                ],
              ),
              TableRow(
                children: [
                  Container(
                    color: Colors.green,
                    child: Text(
                      "${window.devicePixelRatio}",
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Text(
                      "${window.devicePixelRatio}",
                    ),
                  ),
                  Draggable(
                    childWhenDragging: Text("Dragging"),
                    feedback: const SizedBox(),
                    child: Container(
                      color: Colors.deepPurpleAccent,
                      child: Text(
                        "Drag",
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text(
                      "${window.devicePixelRatio}",
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class OptionWithImageScreen extends StatefulWidget {
  const OptionWithImageScreen({Key? key}) : super(key: key);

  @override
  _OptionWithImageScreenState createState() => _OptionWithImageScreenState();
}

class _OptionWithImageScreenState extends State<OptionWithImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            question7.questionDescription!,
          ),
          buildOptionWithImage(),
        ],
      ),
    );
  }

  buildOptionWithImage() {
    question7.options;
  }
}
