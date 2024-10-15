import 'package:flutter/material.dart';

class ProductCostumerIssues extends StatelessWidget {
  const ProductCostumerIssues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.deepOrange,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Product Costumer Issues',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 360,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Costumer Issues',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                ChatItem(
                  name: 'Gustauv Semalam',
                  message: 'My Room Water problem solve the issue',
                  time: '2m ago',
                  status: 'Read',
                  statusColor: Colors.blue,
                  imageUrl: '',
                  statusIcon: Icons.check,
                  statusIconColor: Colors.blue,
                ),
                ChatItem(
                  name: 'Guru Prasad',
                  message: 'OK.',
                  time: '2m ago',
                  status: 'Pending',
                  statusColor: Colors.green,
                  imageUrl: '',
                  statusIcon: Icons.check,
                  statusIconColor: Colors.grey,
                ),
                ChatItem(
                  name: 'Rose Melati',
                  message: 'ok Thank you so much',
                  time: '2m ago',
                  status: 'Unread',
                  statusColor: Colors.grey,
                  imageUrl: '',
                  statusIcon: Icons.check,
                  statusIconColor: Colors.grey,
                ),
                ChatItem(
                  name: 'Olivia James',
                  message: 'OK. i am try my best',
                  time: '2m ago',
                  status: 'Unread',
                  statusColor: Colors.grey,
                  imageUrl: '',
                  statusIcon: Icons.check,
                  statusIconColor: Colors.grey,
                ),
                ChatItem(
                  name: 'Daphne Putri',
                  message: 'OK. its, ok i will try next time',
                  time: '2m ago',
                  status: 'Unread',
                  statusColor: Colors.grey,
                  imageUrl: '',
                  statusIcon: Icons.check,
                  statusIconColor: Colors.grey,
                ),
                ChatItem(
                  name: 'David Mckanzie',
                  message: 'Lorem ipsum dolor sit amet, consect...',
                  time: '2m ago',
                  status: 'Read',
                  statusColor: Colors.green,
                  imageUrl: '',
                  statusIcon: Icons.check,
                  statusIconColor: Colors.blue,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ????()),
                  );*/
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: const Text(
                  'New Chat',
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(160, 60),
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(34.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String status;
  final Color statusColor;
  final String imageUrl;
  final IconData statusIcon;
  final Color statusIconColor;

  const ChatItem({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.status,
    required this.statusColor,
    required this.imageUrl,
    required this.statusIcon,
    required this.statusIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(imageUrl),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: statusColor,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          status,
                          style: TextStyle(
                            color: statusColor,
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(width: 2.0),
                        Icon(
                          statusIcon,
                          color: statusIconColor,
                          size: 12.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
