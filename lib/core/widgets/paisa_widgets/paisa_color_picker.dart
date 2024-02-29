// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common.dart';

Future<int> paisaColorPicker(
  BuildContext context, {
  int defaultColor = 0xFFF44336,
}) async {
  int selectedColor = defaultColor;
  final int? color = await showModalBottomSheet<int>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    constraints: BoxConstraints(
      maxWidth: MediaQuery.sizeOf(context).width >= 700 ? 700 : double.infinity,
    ),
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                context.loc.pickColor,
                style: context.titleLarge,
              ),
              trailing: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context, selectedColor);
                },
                child: Text(
                  context.loc.done,
                ),
              ),
            ),
            ColorPickerGridWidget(
              onSelected: (color) => selectedColor = color,
              selectedColor: selectedColor,
            ),
          ],
        ),
      ),
    ),
  );

  return color ?? selectedColor;
}

class ColorPickerGridWidget extends StatefulWidget {
  const ColorPickerGridWidget({
    super.key,
    required this.onSelected,
    required this.selectedColor,
  });

  final Function(int) onSelected;
  final int selectedColor;

  @override
  State<ColorPickerGridWidget> createState() => _ColorPickerGridWidgetState();
}

class _ColorPickerGridWidgetState extends State<ColorPickerGridWidget> {
  late int selectedColor = widget.selectedColor;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 16),
      shrinkWrap: true,
      itemCount: Colors.primaries.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.sizeOf(context).width >= 700 ? 9 : 6,
      ),
      itemBuilder: (_, index) {
        final color = Colors.primaries.elementAtOrNull(index)!.value;

        return color == selectedColor
            ? Stack(children: [
                Center(
                  child: SizedBox(
                    height: 42,
                    width: 42,
                    child: Container(
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Color(color)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(color),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: const EdgeInsets.all(4),
                      ),
                    ),
                  ),
                ),
              ])
            : InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  widget.onSelected.call(color);
                  setState(() {
                    selectedColor = color;
                  });
                },
                child:
                    Center(child: CircleAvatar(backgroundColor: Color(color))),
              );
      },
    );
  }
}
