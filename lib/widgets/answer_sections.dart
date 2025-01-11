import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplexity_clone/theme/colors.dart';

class AnswerSections extends StatefulWidget {
  const AnswerSections({super.key});

  @override
  State<AnswerSections> createState() => _AnswerSectionsState();
}

class _AnswerSectionsState extends State<AnswerSections> {
  String fullResponse = '''
  India faced Australia in the fourth Test of their series, which concluded on December 30, 2024. Australia emerged victorious, winning by 184 runs, thereby taking a 2-1 lead in the five-match series.
Match Summary
Australia's Innings:
1st Innings: 474 all out (122.4 overs)
2nd Innings: 234 all out (83.4 overs)
India's Innings:
1st Innings: 369 all out (119.3 overs)
2nd Innings: 155 all out (79.1 overs)
Key Performers
Yashasvi Jaiswal was the standout performer for India in the second innings, scoring 84 runs, which provided a glimmer of hope for India during their chase of a target of 340 runs. However, his dismissal triggered a collapse in the batting lineup1.
Rishabh Pant contributed with 30 runs, but apart from these two, no other Indian batsman reached double digits in the second innings, highlighting a significant batting failure1.
For Australia, bowlers Pat Cummins and Scott Boland were instrumental in dismantling the Indian batting order, each taking three wickets1.
Series Context
This match was crucial as it shifted the momentum in favor of Australia after India had won the first Test in Perth. The second Test saw Australia bounce back with a win in Adelaide, while the third Test ended in a draw in Brisbane. With this latest victory, Australia now leads the series heading into the final Test, which is set to begin on January 5, 2025, in Sydney1.
The match was characterized by high-quality cricket and intense competition between two elite teams, but ultimately India's inability to capitalize on key partnerships led to their downfall on the final day
  ''';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Perplexity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Markdown(
          data: fullResponse,
          shrinkWrap: true,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            codeblockDecoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            code: TextStyle(
              fontSize: 16,
            )
          ),
        ),
      ],
    );
  }
}
