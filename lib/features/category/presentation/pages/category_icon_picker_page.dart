import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/extensions/build_context_extension.dart';
import 'package:paisa/core/extensions/text_style_extension.dart';
import 'package:paisa/core/extensions/color_extension.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class CategoryIconPickerPage extends StatefulWidget {
  const CategoryIconPickerPage({super.key});

  @override
  State<CategoryIconPickerPage> createState() => _CategoryIconPickerPageState();
}

class _CategoryIconPickerPageState extends State<CategoryIconPickerPage> {
  late IconData? selectedIcon = MdiIcons.abTesting;

  @override
  Widget build(BuildContext context) {
    final map = paisaIconMap.entries.toList();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop(selectedIcon);
            },
            icon: const Icon(Icons.close)),
        title: Text(context.loc.chooseIcon),
        actions: [
          PaisaTextButton(
            onPressed: () {
              paisaIconPicker(
                context: context,
                defaultIcon: selectedIcon!,
              ).then((resultIcon) => selectedIcon = resultIcon);
            },
            title: context.loc.more,
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PaisaBigButton(
            onPressed: () {
              GoRouter.of(context).pop(selectedIcon);
            },
            title: context.loc.done,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: map.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final iconData = map[index];
          return PaisaFilledCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 0,
                  ),
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -3),
                  title: Text(
                    iconData.key,
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      textStyle: context.titleMedium,
                      color: context.primary,
                    ),
                  ),
                ),
                GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: iconData.value.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 70,
                    childAspectRatio: 1 / 1,
                  ),
                  itemBuilder: (context, index) {
                    final bool isSelected =
                        selectedIcon == iconData.value[index];
                    return Container(
                      margin: const EdgeInsets.all(4),
                      decoration: isSelected
                          ? BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: context.primary,
                              ),
                              borderRadius: BorderRadius.circular(32),
                            )
                          : null,
                      child: IconButton(
                        iconSize: 30,
                        key: ValueKey(iconData.value[index].hashCode),
                        color: isSelected
                            ? context.primary
                            : Theme.of(context).iconTheme.color,
                        onPressed: () {
                          setState(() {
                            selectedIcon = iconData.value[index];
                          });
                        },
                        icon: Icon(iconData.value[index]),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

final paisaIconMap = {
  "Animal": [
    MdiIcons.butterfly,
    MdiIcons.cat,
    MdiIcons.cow,
    MdiIcons.dog,
    MdiIcons.dogSide,
    MdiIcons.duck,
    MdiIcons.fish,
    MdiIcons.horse,
    MdiIcons.owl,
    MdiIcons.panda,
    MdiIcons.pig,
    MdiIcons.sheep,
    MdiIcons.rabbit,
    MdiIcons.snail,
    MdiIcons.snake,
    MdiIcons.spider,
    MdiIcons.tortoise,
    MdiIcons.turtle,
    MdiIcons.turkey,
  ],
  "Brands": [
    MdiIcons.android,
    MdiIcons.angular,
    MdiIcons.apple,
    MdiIcons.atlassian,
    MdiIcons.aws,
    MdiIcons.bitbucket,
    MdiIcons.bitcoin,
    MdiIcons.blenderSoftware,
    MdiIcons.bootstrap,
    MdiIcons.codepen,
    MdiIcons.devTo,
    MdiIcons.deviantart,
    MdiIcons.docker,
    MdiIcons.dropbox,
    MdiIcons.evernote,
    MdiIcons.facebook,
    MdiIcons.firebase,
    MdiIcons.firefox,
    MdiIcons.github,
    MdiIcons.gitlab,
    MdiIcons.gmail,
    MdiIcons.google,
    MdiIcons.googleAds,
    MdiIcons.googleDrive,
    MdiIcons.googlePlay,
    MdiIcons.hulu,
    MdiIcons.instagram,
    MdiIcons.jira,
    MdiIcons.kickstarter,
    MdiIcons.languageSwift,
    MdiIcons.linkedin,
    MdiIcons.microsoft,
    MdiIcons.microsoftAzure,
    MdiIcons.nintendoSwitch,
    MdiIcons.onepassword,
    MdiIcons.pandora,
    MdiIcons.patreon,
    MdiIcons.pinterest,
    MdiIcons.qqchat,
    MdiIcons.reddit,
    MdiIcons.skype,
    MdiIcons.snapchat,
    MdiIcons.soundcloud,
    MdiIcons.spotify,
    MdiIcons.steam,
    MdiIcons.wechat,
    MdiIcons.whatsapp,
    MdiIcons.wikipedia,
    MdiIcons.wordpress,
    MdiIcons.youtube,
  ],
  "Computer": [
    MdiIcons.album,
    MdiIcons.audioVideo,
    MdiIcons.earbuds,
    MdiIcons.headphones,
    MdiIcons.musicNote,
    MdiIcons.speaker,
    MdiIcons.printer,
    MdiIcons.radio,
    MdiIcons.wifi,
    MdiIcons.bluetooth,
    MdiIcons.phone,
    MdiIcons.laptop,
    MdiIcons.desktopClassic,
    MdiIcons.televisionSpeaker,
    MdiIcons.videoVintage,
    MdiIcons.film,
    MdiIcons.camcorder,
    MdiIcons.video,
    MdiIcons.webcam,
    MdiIcons.camera,
  ],
  "Food": [
    MdiIcons.carrot,
    MdiIcons.chiliMild,
    MdiIcons.corn,
    MdiIcons.egg,
    MdiIcons.foodApple,
    MdiIcons.fruitGrapes,
    MdiIcons.fruitCherries,
  ],
  "Health": [
    MdiIcons.pillMultiple,
    MdiIcons.needle,
    MdiIcons.motherNurse,
    MdiIcons.truckPlus,
    MdiIcons.medication,
    MdiIcons.hospitalBuilding,
    MdiIcons.emoticonSick,
  ],
  "Shopping": [
    MdiIcons.basket,
    MdiIcons.cart,
    MdiIcons.cash,
    MdiIcons.creditCard,
    MdiIcons.sale,
    MdiIcons.shopping,
    MdiIcons.store,
    MdiIcons.cashRegister,
    MdiIcons.cartVariant,
  ],
  "Transportation": [
    MdiIcons.airplane,
    MdiIcons.car,
    MdiIcons.ferry,
    MdiIcons.taxi,
    MdiIcons.tram,
    MdiIcons.train,
    MdiIcons.bus,
  ],
  "Other": [
    MdiIcons.circle,
    MdiIcons.circleHalf,
    MdiIcons.heart,
    MdiIcons.hexagon,
    MdiIcons.decagram,
    MdiIcons.shape,
    MdiIcons.hexagonMultiple,
    MdiIcons.triangle,
    MdiIcons.shapePlus,
  ],
};
