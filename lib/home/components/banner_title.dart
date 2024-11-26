import 'package:flutter/material.dart';

class BannerTitle extends StatelessWidget {
  final String title;
  final String timer;
  final String buttonText;
  final VoidCallback onViewAll;
  final Color color;
  final IconData icon;
  const BannerTitle({super.key,
    required this.title,
    required this.buttonText,
    required this.onViewAll,
    required this.timer,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // title an Timer
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                   Icon(
                    icon,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    timer,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              )
            ],
          ),

          // View all Button
          ElevatedButton(
              onPressed: onViewAll,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                side: const BorderSide(
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
