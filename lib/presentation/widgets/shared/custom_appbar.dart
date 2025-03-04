import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String text;
  final Icon icon;
  const CustomAppbar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.headlineMedium;
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.movie_outlined,
                  color: colors.primary,
                ),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: titleStyle!.copyWith(color: Colors.white),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: icon,
                ),
              ],
            ),
          )),
    );
  }
}
