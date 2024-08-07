import 'package:flutter/material.dart';

class CustomLoadingIndicatorWidget extends StatelessWidget {
  const CustomLoadingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              strokeWidth: 4.0,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '讀取中...',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
