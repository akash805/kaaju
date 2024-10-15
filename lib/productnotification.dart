import 'package:flutter/material.dart';
import 'package:newkaajuproject/productcostumerissues.dart';

class ProductNotification extends StatefulWidget {
  const ProductNotification({super.key});

  @override
  State<ProductNotification> createState() => _ProductNotificationState();
}

class _ProductNotificationState extends State<ProductNotification> {
  @override
   void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProductCostumerIssues()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Product Notification',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            NoticeCard(text: 'Strictly follow our product cleaness'),
            NoticeCard(text: 'Pageing & marketing is keep follow'),
            NoticeCard(text: 'Our product marketing maximize in society'),
            NoticeCard(text: 'Stop posting confidentail information or clutte'),
            NoticeCard(text: 'Stop posting confidential information or clutte'),
          ],
        ),
      ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  final String text;

  const NoticeCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    );
  }
}
