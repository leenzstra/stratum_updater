import 'package:flutter/material.dart';
import 'package:stratum_updater/features/download/presentation/widgets/download_indicator.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    super.key,
    required this.subjectData,
    this.color = Colors.white,
  });

  final SubjectData subjectData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: SizedBox(
        width: 250,
        child: Column(
          children: [
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  // color: color,
                ),
                alignment: Alignment.center,
                constraints: const BoxConstraints.expand(),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CardDownloadIndicator(subjectData),
                    ),
                    Center(
                        child: Text(
                      subjectData.name,
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.all(8),
                // color: Colors.grey[50],
                child: Column(
                  children: [
                    const Text('Доступные классы'),
                    Expanded(
                      child: Center(
                        child: Wrap(
                          spacing: 8,
                          alignment: WrapAlignment.center,
                          children: List.generate(
                            subjectData.classes.length,
                            (index) => Container(
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                subjectData.classes[index],
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
