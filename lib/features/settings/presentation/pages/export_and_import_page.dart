import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:paisa/features/settings/presentation/widgets/settings_group_card.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class ExportAndImportPage extends StatelessWidget {
  const ExportAndImportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingCubit settingCubit = BlocProvider.of<SettingCubit>(context);
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: BlocListener(
        bloc: settingCubit,
        listener: (context, state) {
          if (state is ImportFileSuccessState) {
            context.showMaterialSnackBar(context.loc.restoringBackupSuccess);
          } else if (state is ImportFileError) {
            context.showMaterialSnackBar(state.error);
          } else if (state is ImportFileLoading) {
            context.showMaterialSnackBar(context.loc.restoringBackup);
          }
        },
        child: Scaffold(
          appBar: context.materialYouAppBar(
            context.loc.backupAndRestoreTitle,
            actions: [
              BlocBuilder(
                bloc: settingCubit,
                builder: (context, state) {
                  if (state is ImportFileLoading) {
                    return const SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              const SizedBox(width: 16),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              SettingsGroup(
                title: context.loc.backupAndRestoreJSONTitle,
                options: [
                  ListTile(
                    title: Text(context.loc.backupAndRestoreJSONDesc),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: context.onPrimary,
                              backgroundColor: context.primary,
                              padding: const EdgeInsets.all(10),
                            ),
                            onPressed: () => settingCubit.shareFile(),
                            label: Text(context.loc.exportData),
                            icon: Icon(MdiIcons.fileExport),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: context.primary,
                              elevation: 0,
                              padding: const EdgeInsets.all(10),
                            ),
                            onPressed: () => settingCubit.importDataFromJson(),
                            label: Text(context.loc.importData),
                            icon: Icon(MdiIcons.fileImport),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                title: 'Export data as CSV file',
                options: [
                  ListTile(
                    title: Text(context.loc.backupAndRestoreJSONDesc),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: context.onPrimary,
                              backgroundColor: context.primary,
                              padding: const EdgeInsets.all(10),
                            ),
                            onPressed: () => settingCubit.shareCSVFile(),
                            label: Text(context.loc.exportData),
                            icon: Icon(MdiIcons.fileExport),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
