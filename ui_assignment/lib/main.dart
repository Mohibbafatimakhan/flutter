//Mohibba Fatima Khan (2380275)
//BSSE 6D
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          title: const Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white), // makes icons white
          actions: const [
            Icon(Icons.camera_alt, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,      // active tab text
            unselectedLabelColor: Colors.white70, // inactive tab text
            tabs: [
              Tab(icon: Icon(Icons.groups)),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),      body: const TabBarView(
        children: [
          CommunityTab(),
          ChatsTab(),
          StatusTab(),
          CallsTab(),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF25D366),
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=3",
            ),
          ),
          title: Text("Ali Khan"),
          subtitle: Text("Hello, how are you?"),
          trailing: Text("12:45 PM"),
        );
      },
    );
  }
}

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=5",
            ),
          ),
          title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=6",
            ),
          ),
          title: Text("Ahmed"),
          subtitle: Text("Today, 10:30 AM"),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=7",
            ),
          ),
          title: Text("Sara"),
          subtitle: Text("Yesterday, 8:15 PM"),
        ),
      ],
    );
  }
}

class CommunityTab extends StatelessWidget {
  const CommunityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.groups, color: Colors.white),
          ),
          title: Text("Flutter Developers"),
          subtitle: Text("1200 members"),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.school, color: Colors.white),
          ),
          title: Text("University Batch 2026"),
          subtitle: Text("85 members"),
        ),
      ],
    );
  }
}

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=8",
            ),
          ),
          title: Text("Bilal"),
          subtitle: Text("Missed call"),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=9",
            ),
          ),
          title: Text("Ayesha"),
          subtitle: Text("Yesterday, 7:20 PM"),
          trailing: Icon(Icons.videocam, color: Colors.green),
        ),
      ],
    );
  }
}