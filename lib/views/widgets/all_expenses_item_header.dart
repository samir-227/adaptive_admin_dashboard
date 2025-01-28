import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundImageColor,
  });
  final Color? imageColor, backgroundImageColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: backgroundImageColor ?? const Color(0xFFF1F1F1),
                    shape: BoxShape.circle),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imageColor == null ? const Color(0xFF064061) : Colors.white,
        )
      ],
    );
  }
}
