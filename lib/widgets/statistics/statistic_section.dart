import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/widgets/statistics/statistic_item.dart';

class StatisticSection extends StatelessWidget {
  const StatisticSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          Statisticitem(
              value: "4.8 ", iconValue: Icons.star, text: "8k + Penilaian"),
          Container(
            width: 0.1,
            height: 30,
            color: Colors.grey.shade300,
          ),
          Statisticitem(value: "200rb", text: "Jumlah Pesanan"),
          Container(
            width: 0.1,
            height: 30,
            color: Colors.grey.shade300,
          ),
          Statisticitem(value: "Buka", text: "Status Restoran"),
          Container(
            width: 0.1,
            height: 30,
            color: Colors.grey.shade300,
          ),
          Statisticitem(value: "10", text: "Menu Restoran"),
        ],
      ),
    );
  }
}
