import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<User> _suggestions = [
    User(name: 'John Doe', imageUrl: 'assets/images/users/u1.png'),
    User(name: 'Jane Doe', imageUrl: 'assets/images/users/u2.png'),
    User(name: 'Bob Smith', imageUrl: 'assets/images/users/h1.png'),
    User(name: 'Alice Johnson', imageUrl: 'assets/images/users/h1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Partner suggestion ",
            style: screenHeaderStyle(size: 20),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                itemCount: _suggestions.length,
                itemBuilder: (BuildContext context, int index) {
                  final user = _suggestions[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: pink, borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(user.imageUrl),
                        ),
                        title: Text(user.name),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.check),
                              color: Colors.green,
                              onPressed: () {
                                // Accept friend request
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.close),
                              color: Colors.red,
                              onPressed: () {
                                // Decline friend request
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String imageUrl;

  User({required this.name, required this.imageUrl});
}
