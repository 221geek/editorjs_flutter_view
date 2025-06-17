class EditorJSData {
  final List<EditorJSBlock> blocks;

  EditorJSData({required this.blocks});

  factory EditorJSData.fromJson(Map<String, dynamic> json) {
    final blocksJson = json['blocks'] as List;
    return EditorJSData(
      blocks: blocksJson.map((e) => EditorJSBlock.fromJson(e)).toList(),
    );
  }
}

class EditorJSBlock {
  final String type;
  final Map<String, dynamic> data;

  EditorJSBlock({required this.type, required this.data});

  factory EditorJSBlock.fromJson(Map<String, dynamic> json) {
    return EditorJSBlock(
      type: json['type'],
      data: Map<String, dynamic>.from(json['data']),
    );
  }
}
