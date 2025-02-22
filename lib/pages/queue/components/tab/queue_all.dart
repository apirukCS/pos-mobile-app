import 'package:flutter/material.dart';
import 'package:pos_mobile/config/style.dart';
import 'package:pos_mobile/pages/queue/components/container_card_queue.dart';

class QueueAll extends StatelessWidget {
  const QueueAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: (1 / .3),
      padding:  const EdgeInsets.all(kHalfPadding),
      children: List.generate(29, (index) {
        return Padding(
          padding: const EdgeInsets.all(kHalfPadding),
          child: ContainerCardQueue(
            numberOfQueue: '${index+1}',
            amount: '${index+1}',
          ),
        );
      }),
    );
  }
}
