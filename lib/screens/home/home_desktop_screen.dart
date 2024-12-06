import 'package:flutter/material.dart';
import 'package:hover_animation_demo/components/custom_hover_card.dart';

class HomeDesktopScreen extends StatelessWidget {
  const HomeDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomHoverCard(
            imageUrl:
                "https://images.unsplash.com/photo-1521566652839-697aa473761a?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            title: "Mary Gwen",
            subtitle: "Photographer",
            additionalText: "Sharing content on social media.",
            onMorePressed: () {
              // Handle "More" button press action here
            },
            specialCode: "SNC-126",
          ),
        ],
      ),
    );
  }
}
