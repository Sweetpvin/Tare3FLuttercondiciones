import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        children: [
          CircleAvatar(radius: 25, child: Icon(Icons.person)),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Developer",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("UI/UX Designer"),
              ],
            ),
          ),

          Icon(Icons.arrow_forward_ios, size: 18),
        ],
      ),
    );
  }
}
