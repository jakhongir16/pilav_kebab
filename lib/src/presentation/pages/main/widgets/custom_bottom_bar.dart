import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    this.onTap,
    this.onScanTap,
  });

  final int currentIndex;
  final ValueChanged<int>? onTap;
  final VoidCallback? onScanTap;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: context.theme.shadowColor,
          blurRadius: 2,
          spreadRadius: 0.1,
          offset: const Offset(0, -1),
        ),
      ],
    ),
    child: BottomAppBar(
      elevation: 8,
      height: kBottomNavigationBarHeight + 10,
      child: Row(
        children: [
          BottomMenuItem(
            onTap: () {
              onTap?.call(0);
            },
            isSelected: currentIndex == 0,
            label: context.tr('home'),
            icon: AppIcons.home,
          ),
          BottomMenuItem(
            onTap: () {
              onTap?.call(1);
            },
            isSelected: currentIndex == 1,
            label: context.tr('basket'),
            icon: AppIcons.basket,
          ),

          BottomMenuItem(
            onTap: () {
              onTap?.call(2);
            },
            isSelected: currentIndex == 2,
            label: context.tr('myorders'),
            icon: AppIcons.shopping_bag,
          ),
          BottomMenuItem(
            onTap: () {
              onTap?.call(3);
            },
            isSelected: currentIndex == 3,
            label: context.tr('profile'),
            icon: AppIcons.profile,
          ),
        ],
      ),
    ),
  );
}

class BottomMenuItem extends StatelessWidget {
  const BottomMenuItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    required this.isSelected,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) => Expanded(
    child: Semantics(
      child: InkResponse(
        onTap: onTap,
        customBorder: const CircleBorder(),
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? context.theme.bottomNavigationBarTheme.selectedItemColor
                  : context
                  .theme.bottomNavigationBarTheme.unselectedItemColor,
            ),
            Text(
              label,
              style: context.theme.bottomNavigationBarTheme.selectedLabelStyle
                  ?.copyWith(
                color: isSelected
                    ? context.theme.bottomNavigationBarTheme.selectedItemColor
                    : context
                    .theme.bottomNavigationBarTheme.unselectedItemColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
