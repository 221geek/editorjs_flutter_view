# editorjs_flutter_view

`editorjs_flutter_view` is a Flutter widget that renders JSON content produced by [Editor.js](https://editorjs.io) into native Flutter widgets.

## Features

- Basic support for block types: `paragraph`, `header`
- Easily extensible for other types (`image`, `list`, etc.)

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  editorjs_flutter_view: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Basic Usage

```dart
import 'package:editorjs_flutter_view/editorjs_flutter_view.dart';

const jsonContent = '''
{
  "blocks": [
    {
      "type": "header",
      "data": {
        "text": "Hello Editor.js",
        "level": 2
      }
    },
    {
      "type": "paragraph",
      "data": {
        "text": "This is a paragraph rendered in Flutter."
      }
    }
  ]
}
''';

EditorJSView(jsonString: jsonContent);
```

## Example

See the [`example/`](example/) folder for a complete demo.

## Contribution

Contributions are welcome. Fork the project, create a branch, and submit a pull request.

## License

[MIT](LICENSE)
