import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final bool isCompleted;
  final bool isLast;

  const Timeline({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.isCompleted,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline indicator + line
        SizedBox(
          width: 28,
          child: Column(
            children: [
              Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: isCompleted
                      ? Colors.green
                      : Colors.grey.shade300,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),

              if (!isLast)
                Container(
                  width: 2,
                  height: 80,
                  color: isCompleted
                      ? Colors.green
                      : Colors.grey.shade300,
                ),
            ],
          ),
        ),

        // Text
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade700,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}