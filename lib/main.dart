import 'package:flutter/material.dart';

void main() {
  runApp(MyBankingApp());
}

class MyBankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
        fontFamily: 'San Francisco',
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0,
            color: Colors.black54,
          ),
        ),
      ),
      home: BankingHomePage(),
    );
  }
}

class BankingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Minha Conta',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildBankingCard(
              icon: Icons.account_balance_wallet,
              title: 'Saldo disponível',
              subtitle: 'R\$ 5.000,00',
              context: context,
            ),
            SizedBox(height: 16.0),
            buildBankingCard(
              icon: Icons.attach_money,
              title: 'Última transação',
              subtitle: 'R\$ 200,00 - Supermercado',
              context: context,
            ),
            SizedBox(height: 16.0),
            buildBankingCard(
              icon: Icons.credit_card,
              title: 'Cartão de Crédito',
              subtitle: 'R\$ 1.000,00 - Limite disponível',
              context: context,
            ),
            SizedBox(height: 16.0),
            buildBankingCard(
              icon: Icons.savings,
              title: 'Poupança',
              subtitle: 'R\$ 10.000,00',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBankingCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required BuildContext context,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5,
      shadowColor: Colors.blueAccent.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent.withOpacity(0.1),
              child: Icon(icon, color: Colors.blueAccent),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}