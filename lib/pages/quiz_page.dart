import 'package:flutter/material.dart';
import 'dart:math';
import 'result_page.dart';

// Expanded explanations for each question
final List<Map<String, dynamic>> allQuestions = [
  {
    'question': 'What is the main cause of climate change?',
    'options': ['Deforestation', 'Solar flares', 'Volcanic eruptions', 'Ocean currents'],
    'answer': 0,
    'fact': 'Burning fossil fuels and deforestation are the main causes of climate change.',
    'explanation':
        'Deforestation leads to fewer trees absorbing CO₂, while burning fossil fuels releases greenhouse gases. Solar flares and volcanic eruptions can affect climate but are not the main drivers. Ocean currents influence weather but do not cause long-term climate change.'
  },
  {
    'question': 'Which gas is most responsible for global warming?',
    'options': ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
    'answer': 1,
    'fact': 'Carbon dioxide (CO₂) is the primary greenhouse gas emitted by human activities.',
    'explanation':
        'CO₂ traps heat in the atmosphere, causing global warming. Oxygen and nitrogen make up most of the air but do not trap heat. Hydrogen is rare in the atmosphere and does not contribute to warming.'
  },
  {
    'question': 'What is the greenhouse effect?',
    'options': [
      'Trapping of heat by gases in the atmosphere',
      'Melting of glaciers',
      'Increase in rainfall',
      'Growth of plants in greenhouses'
    ],
    'answer': 0,
    'fact': 'The greenhouse effect is the trapping of heat by gases in the Earth’s atmosphere.',
    'explanation':
        'Greenhouse gases like CO₂ and methane trap heat, warming the planet. Melting glaciers and increased rainfall are results of climate change, not the greenhouse effect itself. Growing plants in greenhouses is unrelated.'
  },
  {
    'question': 'Which renewable energy source is NOT affected by weather?',
    'options': ['Solar', 'Wind', 'Hydroelectric', 'Geothermal'],
    'answer': 3,
    'fact': 'Geothermal energy is available regardless of weather conditions.',
    'explanation':
        'Geothermal energy comes from the Earth’s internal heat and is constant. Solar and wind depend on sunlight and wind, while hydroelectric relies on water flow, which can change with weather.'
  },
  {
    'question': 'Which country emits the most CO₂?',
    'options': ['USA', 'China', 'India', 'Russia'],
    'answer': 1,
    'fact': 'China is currently the largest emitter of CO₂.',
    'explanation':
        'China’s large population and industrial output make it the top emitter. The USA is second, India and Russia emit less, though all contribute significantly.'
  },
  {
    'question': 'What can individuals do to reduce carbon footprint?',
    'options': [
      'Use public transport',
      'Recycle',
      'Eat less meat',
      'All of the above'
    ],
    'answer': 3,
    'fact': 'All these actions help reduce your carbon footprint.',
    'explanation':
        'Using public transport reduces emissions from cars, recycling saves energy, and eating less meat lowers methane emissions. All are effective ways to help the planet.'
  },
  {
    'question': 'What is the Paris Agreement?',
    'options': [
      'A climate change treaty',
      'A trade agreement',
      'A peace treaty',
      'A sports event'
    ],
    'answer': 0,
    'fact': 'The Paris Agreement is an international treaty to combat climate change.',
    'explanation':
        'It aims to limit global warming to below 2°C. The other options are unrelated to climate action.'
  },
  {
    'question': 'Which of these is a greenhouse gas?',
    'options': ['Methane', 'Ozone', 'Nitrous oxide', 'All of the above'],
    'answer': 3,
    'fact': 'Methane, ozone, and nitrous oxide are all greenhouse gases.',
    'explanation':
        'All listed gases trap heat in the atmosphere. Each has a different warming potential, but all contribute to climate change.'
  },
  {
    'question': 'What percentage of the Earth’s water is fresh and accessible?',
    'options': ['10%', '2.5%', '1%', '0.3%'],
    'answer': 3,
    'fact': 'Only about 0.3% of Earth’s water is fresh and accessible.',
    'explanation':
        'Most water is saltwater or frozen. Only a tiny fraction is available for human use. The other percentages are too high.'
  },
  {
    'question': 'Which sector emits the most greenhouse gases globally?',
    'options': ['Transport', 'Industry', 'Agriculture', 'Energy'],
    'answer': 3,
    'fact': 'The energy sector is the largest source of greenhouse gas emissions.',
    'explanation':
        'Energy production, especially from fossil fuels, is the main source. Transport, industry, and agriculture also emit gases but less than energy.'
  },
  {
    'question': 'What is reforestation?',
    'options': [
      'Cutting down trees',
      'Planting new trees',
      'Burning forests',
      'Building roads in forests'
    ],
    'answer': 1,
    'fact': 'Reforestation means planting new trees to restore forests.',
    'explanation':
        'Planting trees helps absorb CO₂. The other options harm forests and increase emissions.'
  },
  {
    'question': 'Which of these is NOT a fossil fuel?',
    'options': ['Coal', 'Oil', 'Natural Gas', 'Wind'],
    'answer': 3,
    'fact': 'Wind is a renewable energy source, not a fossil fuel.',
    'explanation':
        'Coal, oil, and natural gas are fossil fuels that emit CO₂. Wind energy is clean and renewable.'
  },
  {
    'question': 'What is the main goal of SDG 13?',
    'options': [
      'Zero Hunger',
      'Climate Action',
      'Clean Water',
      'Affordable Energy'
    ],
    'answer': 1,
    'fact': 'SDG 13 focuses on taking urgent action to combat climate change.',
    'explanation':
        'SDG 13 is about climate action. The other SDGs address different global challenges.'
  },
  {
    'question': 'Which animal is most threatened by melting Arctic ice?',
    'options': ['Penguin', 'Polar Bear', 'Tiger', 'Elephant'],
    'answer': 1,
    'fact': 'Polar bears are highly threatened by melting Arctic ice.',
    'explanation':
        'Polar bears rely on sea ice to hunt. Penguins live in the Antarctic, not the Arctic. Tigers and elephants are not affected by Arctic ice.'
  },
  {
    'question': 'What is carbon offsetting?',
    'options': [
      'Reducing emissions by planting trees or funding green projects',
      'Increasing emissions',
      'Burning more coal',
      'None of the above'
    ],
    'answer': 0,
    'fact': 'Carbon offsetting means compensating for emissions by supporting green projects.',
    'explanation':
        'Offsetting helps balance emissions. Increasing emissions or burning coal worsens climate change. "None of the above" is incorrect.'
  },
  {
    'question': 'Which of these is a consequence of global warming?',
    'options': [
      'Rising sea levels',
      'More extreme weather',
      'Loss of biodiversity',
      'All of the above'
    ],
    'answer': 3,
    'fact': 'All listed effects are consequences of global warming.',
    'explanation':
        'Global warming causes all these problems. Each option is a real consequence of climate change.'
  },
  {
    'question': 'What is the main source of ocean plastic pollution?',
    'options': [
      'Fishing nets',
      'Plastic bags and bottles',
      'Oil spills',
      'Sewage'
    ],
    'answer': 1,
    'fact': 'Plastic bags and bottles are a major source of ocean plastic pollution.',
    'explanation':
        'Plastic bags and bottles are used widely and often end up in the ocean. Fishing nets, oil spills, and sewage also pollute but are not the main source.'
  },
  {
    'question': 'Which practice helps conserve water?',
    'options': [
      'Fixing leaks',
      'Taking shorter showers',
      'Using water-efficient appliances',
      'All of the above'
    ],
    'answer': 3,
    'fact': 'All these practices help conserve water.',
    'explanation':
        'Each practice saves water. Doing all of them is best for conservation.'
  },
  {
    'question': 'Which of these is a clean energy source?',
    'options': ['Coal', 'Solar', 'Diesel', 'Petrol'],
    'answer': 1,
    'fact': 'Solar energy is a clean, renewable energy source.',
    'explanation':
        'Solar energy does not emit greenhouse gases. Coal, diesel, and petrol are fossil fuels that pollute.'
  },
  {
    'question': 'What is the effect of deforestation?',
    'options': [
      'Loss of habitat',
      'Increased CO₂',
      'Soil erosion',
      'All of the above'
    ],
    'answer': 3,
    'fact': 'Deforestation causes all these negative effects.',
    'explanation':
        'Deforestation leads to habitat loss, more CO₂ in the air, and soil erosion. All options are correct.'
  },
];

List<Map<String, dynamic>> getRandomQuestions(int count) {
  final random = Random();
  final questionsCopy = List<Map<String, dynamic>>.from(allQuestions);
  questionsCopy.shuffle(random);
  return questionsCopy.take(count).toList();
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late final List<Map<String, dynamic>> questions;
  int currentQuestion = 0;
  int score = 0;
  bool showFact = false;
  int? selectedOption;
  bool? isCorrect;
  List<int> shuffledOptionIndices = [];

  @override
  void initState() {
    super.initState();
    questions = getRandomQuestions(10);
    _shuffleOptions();
  }

  void _shuffleOptions() {
    final q = questions[currentQuestion];
    shuffledOptionIndices = List.generate(q['options'].length, (i) => i);
    shuffledOptionIndices.shuffle(Random());
  }

  void nextQuestion() {
    setState(() {
      showFact = false;
      selectedOption = null;
      isCorrect = null;
      currentQuestion++;
      if (currentQuestion < questions.length) {
        _shuffleOptions();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestion >= questions.length) {
      return ResultPage(score: score, total: questions.length);
    }

    final q = questions[currentQuestion];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF43E97B), Color(0xFF38F9D7), Color(0xFF3A7BD5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            color: const Color(0xFFfff176),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Question ${currentQuestion + 1} of ${questions.length}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    q['question'],
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      double maxWidth = constraints.maxWidth;
                      return Column(
                        children: List.generate(shuffledOptionIndices.length, (displayIdx) {
                          int i = shuffledOptionIndices[displayIdx];
                          bool isSelected = selectedOption == i;
                          bool isAnswer = q['answer'] == i;
                          Color? buttonColor;
                          if (showFact) {
                            if (isAnswer) {
                              buttonColor = Colors.green[400];
                            } else if (isSelected) {
                              buttonColor = Colors.red[300];
                            } else {
                              buttonColor = Colors.green[200];
                            }
                          } else {
                            buttonColor = Colors.green[200];
                          }
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: maxWidth * 0.9,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor,
                                      foregroundColor: Colors.black,
                                      padding: const EdgeInsets.symmetric(vertical: 14),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      textStyle: const TextStyle(fontSize: 18),
                                    ),
                                    onPressed: showFact
                                        ? null
                                        : () {
                                            setState(() {
                                              selectedOption = i;
                                              showFact = true;
                                              isCorrect = i == q['answer'];
                                              if (isCorrect!) score++;
                                            });
                                          },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            q['options'][i],
                                            style: const TextStyle(fontSize: 18),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        if (showFact && isSelected)
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12.0),
                                            child: Icon(
                                              isCorrect!
                                                  ? Icons.check_circle
                                                  : Icons.cancel,
                                              color: isCorrect!
                                                  ? Colors.green[900]
                                                  : Colors.red[900],
                                              size: 28,
                                            ),
                                          ),
                                        if (showFact && !isSelected && isAnswer)
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12.0),
                                            child: Icon(
                                              Icons.check_circle,
                                              color: Colors.green[900],
                                              size: 28,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  if (showFact)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              isCorrect! ? Icons.check_circle : Icons.cancel,
                              color: isCorrect! ? Colors.green[900] : Colors.red[900],
                              size: 28,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              isCorrect! ? "Correct!" : "Incorrect",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: isCorrect! ? Colors.green[900] : Colors.red[900],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          q['fact'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Color(0xFF388E3C),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          q['explanation'],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF3A3A3A),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF43A047),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          onPressed: nextQuestion,
                          child: Text(
                            currentQuestion == questions.length - 1
                                ? 'See Results'
                                : 'Next Question',
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}