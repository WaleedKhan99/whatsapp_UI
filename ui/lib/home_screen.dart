import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(
              tabs: [
                Icon(Icons.people_alt),
                Text('Chats'),
                Text('Status'),
                Text('Calls')
              ],
            ),
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(width: 10),
              Icon(Icons.search),
              SizedBox(width: 0),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: '1', child: Text('New Group')),
                        PopupMenuItem(value: '2', child: Text('New broadcast')),
                        PopupMenuItem(
                            value: '3', child: Text('Linked devices')),
                        PopupMenuItem(
                            value: '4', child: Text('Starred messages')),
                        PopupMenuItem(value: '5', child: Text('Settings'))
                      ]),
              SizedBox(width: 10)
            ],
          ),
          body: TabBarView(children: [
            Text('Community'),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=400')),
                    title: Text('Ali'),
                    subtitle: Text('How was your day'),
                    trailing: Text('9:00 pm'),
                  );
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 4)),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=400')),
                    ),
                    title: Text('Ali'),
                    subtitle: Text('15 minutes ago'),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=400')),
                    title: Text('Ali'),
                    subtitle: Text('Missed Voice Call at 9:00 pm'),
                    trailing: Icon(Icons.phone),
                  );
                }),
          ]),
        ));
  }
}
