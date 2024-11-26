import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int)? onItemSelected;

  const BottomMenu({
    super.key,
    required this.selectedIndex,
    this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItem(
            icon: Icons.home,
            label: "Home",
            isSelected: selectedIndex == 0,
            onTap: () => onItemSelected?.call(0),
          ),
          _buildMenuItem(
            icon: Icons.favorite_border,
            label: "Wishlist",
            isSelected: selectedIndex == 1,
            onTap: () => onItemSelected?.call(1),
          ),
          _buildMenuItem(
            icon: Icons.shopping_cart,
            label: "Cart",
            isSelected: selectedIndex == 2,
            isCentral: true,
            onTap: () => onItemSelected?.call(2),
          ),
          _buildMenuItem(
            icon: Icons.search,
            label: "Search",
            isSelected: selectedIndex == 3,
            onTap: () => onItemSelected?.call(3),
          ),
          _buildMenuItem(
            icon: Icons.settings,
            label: "Setting",
            isSelected: selectedIndex == 4,
            onTap: () => onItemSelected?.call(4),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    bool isCentral = false,
    required Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isCentral)
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: isSelected ? Colors.black : Colors.grey,
                size: 28,
              ),
            )
          else
            Icon(
              icon,
              color: isSelected ? Colors.red : Colors.black,
              size: 24,
            ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.bold,
              color: isSelected ? Colors.red : Colors.grey[900],
            ),
          ),
        ],
      ),
    );
  }
}
