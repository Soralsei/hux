import 'package:flutter/material.dart';
import 'package:hux/hux.dart';
import 'section_with_documentation.dart';

class KbdSection extends StatelessWidget {
  const KbdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWithDocumentation(
      componentName: 'kbd',
      child: HuxCard(
        size: HuxCardSize.large,
        backgroundColor: HuxColors.white5,
        borderColor: HuxTokens.borderSecondary(context),
        title: 'KBD',
        subtitle: 'Keyboard key indicators for shortcuts and UI state',
        child: const Column(
          children: [
            SizedBox(height: 36),
            Center(
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  HuxKBD(shortcut: '⌘K'),
                  HuxKBD(shortcut: '⌘⇧P'),
                  HuxKBD(shortcut: 'Enter'),
                  HuxKBD(shortcut: 'Esc'),
                  HuxKBD(shortcut: '/'),
                ],
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
