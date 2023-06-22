import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: data['user_answer'] as String ==
                                  data['correct_answer'] as String
                              ? const Color.fromARGB(255, 86, 243, 33)
                              : const Color.fromARGB(255, 243, 33, 33),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: Text(
                        ((data['questions_index'] as int) + 1).toString(),
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          color: Color.fromARGB(255, 93, 14, 203),
                          fontSize: 12,
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            data['questions'] as String,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 213, 201, 201),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(172, 253, 253, 253),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 106, 230, 133),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
