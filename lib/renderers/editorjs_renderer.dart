import 'package:flutter/widgets.dart';
import '../models/editorjs_models.dart';

class EditorJSRenderer extends StatelessWidget {
  final EditorJSData data;

  const EditorJSRenderer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data.blocks.map((block) {
        switch (block.type) {
          case 'paragraph':
            return Text(block.data['text'] ?? '');
          case 'header':
            return Text(
              block.data['text'] ?? '',
              style: TextStyle(
                fontSize: _headerFontSize(block.data['level'] ?? 1),
                fontWeight: FontWeight.bold,
              ),
            );
          default:
            return const SizedBox.shrink();
        }
      }).toList(),
    );
  }

  double _headerFontSize(int level) {
    switch (level) {
      case 1:
        return 32;
      case 2:
        return 28;
      case 3:
        return 24;
      case 4:
        return 20;
      case 5:
        return 16;
      case 6:
        return 14;
      default:
        return 16;
    }
  }
}
