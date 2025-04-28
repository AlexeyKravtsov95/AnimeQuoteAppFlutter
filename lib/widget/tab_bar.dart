import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBarItem(
              icon: Icons.home_outlined,
              label: "Home",
              isActive: currentIndex == 0,
              onTap: () => onTap(0),
            ),
            _buildBarItem(
              icon: Icons.category_outlined,
              label: "Category",
              isActive: currentIndex == 1,
              onTap: () => onTap(1),
            ),
            _buildBarItem(
              icon: Icons.favorite_border_outlined,
              label: "Favorite",
              isActive: currentIndex == 2,
              onTap: () => onTap(2),
            ),
            _buildBarItem(
              icon: Icons.settings_outlined,
              label: "Settings",
              isActive: currentIndex == 3,
              onTap: () => onTap(3),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBarItem({
    required IconData icon,
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TweenAnimationBuilder(
            tween: Tween(begin: 0.9, end: isActive ? 1.1 : 1.0),
            duration: const Duration(milliseconds: 200),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Icon(
                  icon,
                  size: 26,
                  color:
                      isActive
                          ? const Color.fromRGBO(162, 185, 167, 1.0)
                          : Colors.black.withValues(alpha: 0.7),
                ),
              );
            },
          ),
          const SizedBox(height: 4),
          // Текст
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color:
                  isActive
                      ? const Color.fromRGBO(162, 185, 167, 1.0)
                      : Colors.black.withValues(alpha: 0.7),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.only(top: 4),
            height: 3,
            width: isActive ? 20 : 0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(162, 185, 167, 1.0),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
