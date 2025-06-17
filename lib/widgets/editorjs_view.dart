import 'dart:convert';
import 'package:flutter/widgets.dart';
import '../models/editorjs_models.dart';
import '../renderers/editorjs_renderer.dart';

class EditorJSView extends StatelessWidget {
  final String jsonString;

  const EditorJSView({super.key, required this.jsonString});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> decoded = json.decode(jsonString);
    final EditorJSData data = EditorJSData.fromJson(decoded);

    return EditorJSRenderer(data: data);
  }
}
