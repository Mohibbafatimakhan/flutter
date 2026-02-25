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
      home: EmailHome(),
    );
  }
}

class EmailHome extends StatelessWidget {
  const EmailHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //////////////////////////////////////////////////////
        /// APP BAR
        //////////////////////////////////////////////////////
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Gmail",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 15),
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: "Primary"),
              Tab(text: "Social"),
              Tab(text: "Promotions"),
            ],
          ),
        ),

        //////////////////////////////////////////////////////
        /// DRAWER
        //////////////////////////////////////////////////////
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                child: Text(
                  "Gmail",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text("Inbox"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Sent"),
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("Drafts"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
            ],
          ),
        ),

        //////////////////////////////////////////////////////
        /// TAB VIEW
        //////////////////////////////////////////////////////
        body: const TabBarView(
          children: [
            PrimaryTab(),
            SocialTab(),
            PromotionsTab(),
          ],
        ),

        //////////////////////////////////////////////////////
        /// FLOATING BUTTON
        //////////////////////////////////////////////////////
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {},
          icon: const Icon(Icons.edit),
          label: const Text("Compose"),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////
/// PRIMARY TAB
//////////////////////////////////////////////////////

class PrimaryTab extends StatelessWidget {
  const PrimaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        EmailTile(
          sender: "Ali Khan",
          subject: "Meeting Reminder",
          preview: "Don't forget our meeting tomorrow.",
          time: "12:30 PM",
        ),
        Divider(),
        EmailTile(
          sender: "Amazon",
          subject: "Order Delivered",
          preview: "Your package has been delivered.",
          time: "10:45 AM",
        ),
        Divider(),
        EmailTile(
          sender: "Flutter Team",
          subject: "New Update",
          preview: "Flutter 3.16 has been released.",
          time: "Yesterday",
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////
/// SOCIAL TAB
//////////////////////////////////////////////////////

class SocialTab extends StatelessWidget {
  const SocialTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        EmailTile(
          sender: "Facebook",
          subject: "New Friend Request",
          preview: "You have a new friend request.",
          time: "9:00 AM",
        ),
        Divider(),
        EmailTile(
          sender: "LinkedIn",
          subject: "Job Recommendation",
          preview: "We found jobs that match your profile.",
          time: "Mon",
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////
/// PROMOTIONS TAB
//////////////////////////////////////////////////////

class PromotionsTab extends StatelessWidget {
  const PromotionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        EmailTile(
          sender: "Netflix",
          subject: "New Shows Added",
          preview: "Check out the latest movies and series.",
          time: "Sun",
        ),
        Divider(),
        EmailTile(
          sender: "Daraz",
          subject: "Big Sale Today!",
          preview: "Up to 70% off on electronics.",
          time: "Sat",
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////
/// REUSABLE EMAIL TILE
//////////////////////////////////////////////////////

class EmailTile extends StatelessWidget {
  final String sender;
  final String subject;
  final String preview;
  final String time;

  const EmailTile({
    super.key,
    required this.sender,
    required this.subject,
    required this.preview,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        child: Text(
          sender[0],
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        sender,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subject,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            preview,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time),
          SizedBox(height: 5),
          Icon(Icons.star_border, size: 18),
        ],
      ),
    );
  }
}