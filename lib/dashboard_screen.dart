import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView.builder(
        itemCount: 10, // Assuming there are 10 tweets
        itemBuilder: (context, index) {
          return _buildTweetItem(context, index);
        },
      ),
    );
  }

  Widget _buildTweetItem(BuildContext context, int index) {
    // Dummy data
    String username = 'User${index + 1}';
    String tweetContent = 'This is tweet number ${index + 1}.';
    String avatarUrl =
        'https://i.pravatar.cc/150?img=${index + 1}'; // Random avatar URL

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
          title: Text(
            username,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(tweetContent),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Add your action here
            },
          ),
        ),
        Divider(height: 0), // Divider between tweets
      ],
    );
  }
}
