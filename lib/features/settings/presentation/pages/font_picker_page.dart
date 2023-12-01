import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:provider/provider.dart';

class FontPickerPage extends StatefulWidget {
  const FontPickerPage({
    super.key,
    required this.currentFont,
  });

  final String currentFont;

  @override
  State<FontPickerPage> createState() => _FontPickerPageState();
}

class _FontPickerPageState extends State<FontPickerPage> {
  final List<String> fonts = GoogleFonts.asMap().keys.toList();
  late String selectedFont = widget.currentFont;
  final TextEditingController textEditingController = TextEditingController();
  final ValueNotifier<String> valueNotifier = ValueNotifier('');

  Future<void> _save() async {
    await Provider.of<Box<dynamic>>(
      context,
      listen: false,
    ).put(appFontChangerKey, selectedFont);
    if (!mounted) {
      return;
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.loc.chooseFont),
          titleTextStyle:
              context.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PaisaTextField(
                controller: textEditingController,
                hintText: context.loc.search,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  valueNotifier.value = value;
                },
              ),
            ),
          ),
        ),
        body: ValueListenableBuilder<String>(
          valueListenable: valueNotifier,
          builder: (context, String filterFont, _) {
            List<String> tempFonts = fonts;
            if (filterFont.isNotEmpty) {
              tempFonts = fonts
                  .where((element) =>
                      element.toLowerCase().contains(filterFont.toLowerCase()))
                  .toList();
            }
            return Scrollbar(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: tempFonts.length,
                itemBuilder: (context, index) {
                  final String font = tempFonts[index];
                  return RadioListTile(
                    value: font,
                    groupValue: selectedFont,
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        selectedFont = value;
                      });
                    },
                    title: Text(
                      font,
                      style: GoogleFonts.getFont(font),
                    ),
                  );
                },
              ),
            );
          },
        ),
        bottomNavigationBar: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(context.loc.cancel),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: _save,
                  child: Text(context.loc.done),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
