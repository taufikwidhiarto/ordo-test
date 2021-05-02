import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/widgets/common/icon_text.dart';

class WalletSection extends StatelessWidget {
  const WalletSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;
    return Container(
      padding: EdgeInsets.all(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        color: primary,
        child: Container(
          padding: EdgeInsets.only(top: 22, right: 16, bottom: 28, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Text('Saldo Wallet',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Material(
                    elevation: 6,
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                      child: Row(
                        children: [
                          Icon(Icons.account_balance_wallet,
                              color: primary, size: 18),
                          Container(width: 8),
                          Text(
                            'Rp 3.000.000',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 100),
                      child: IconText(
                        icon: Icons.print,
                        text: "Carikan",
                        boxShape: BoxShape.rectangle,
                        backgroundColor: Colors.white,
                        iconColor: primary,
                        iconPadding: EdgeInsets.all(2),
                        size: 30,
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 100),
                      child: IconText(
                        icon: Icons.add,
                        text: "Tambah Saldo",
                        boxShape: BoxShape.rectangle,
                        backgroundColor: Colors.white,
                        iconColor: primary,
                        iconPadding: EdgeInsets.all(2),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
