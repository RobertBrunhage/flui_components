import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ComponentPreview extends HookWidget {
  final String title;
  final String code;
  final Widget child;

  const ComponentPreview({
    Key? key,
    required this.title,
    required this.child,
    required this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showPreview = useState(true);

    return ExpansionTile(
      title: Text(title),
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Code"),
            Switch(
              value: showPreview.value,
              onChanged: (v) => showPreview.value = v,
            ),
            const Text("Preview"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: showPreview.value
              ? Center(child: child)
              : Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: HighlightView(
                        code,
                        language: "dart",
                        theme: monokaiSublimeTheme,
                        padding: const EdgeInsets.all(25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () async {
                            await Clipboard.setData(ClipboardData(text: code));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Copied to clipboard"),
                              ),
                            );
                          },
                          color: Colors.white,
                          icon: const Icon(Icons.copy),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
