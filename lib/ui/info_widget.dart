import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [getTopRow(context), getBottomRow(context)],
    );
  }

  Widget getTopRow(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Patient",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.grey),
            ),
            Spacer(),
            Text(
              "0000",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.grey),
            ),
            Spacer(
              flex: 4,
            )
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("JEFF",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white)),
              const Spacer(
                flex: 2,
              ),
              Table(
                columnWidths: const {
                  0: IntrinsicColumnWidth(),
                  1: IntrinsicColumnWidth(),
                  2: IntrinsicColumnWidth(),
                },
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                children: [
                  TableRow(children: [
                    Text(
                      "DOB",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text(
                      "120287",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    )
                  ]),
                  TableRow(children: [
                    Text(
                      "CID",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      "004938",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    )
                  ])
                ],
              ),
              const Spacer(),
            ])
      ],
    );
  }

  Widget getBottomRow(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.top,
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: FixedColumnWidth(50),
        3: IntrinsicColumnWidth()
      },
      children: [
        TableRow(
          children: [
            Text(
              "Heartrate",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
            Container(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "dosage",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.grey),
                ),
                Spacer(),
                Text(
                  'Fine',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "063",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white),
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey,
              size: 18,
            ),
            Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.antiAlias,
                  child: LinearProgressIndicator(
                    value: 0.9,
                    valueColor: AlwaysStoppedAnimation(Colors.grey),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minHeight: 18,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "0.96%",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      '0.6ml',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
