import 'package:flutter/material.dart';

import '../../../common/enum/debt_type.dart';
import '../../../common/widgets/material_you_chip.dart';

class DebtToggleButtonsWidget extends StatefulWidget {
  const DebtToggleButtonsWidget({
    Key? key,
    required this.onSelected,
    required this.selectedType,
  }) : super(key: key);

  final Function(DebtType) onSelected;
  final DebtType selectedType;
  @override
  DebtToggleButtonsWidgetState createState() => DebtToggleButtonsWidgetState();
}

class DebtToggleButtonsWidgetState extends State<DebtToggleButtonsWidget> {
  late DebtType selectedType = widget.selectedType;

  @override
  void initState() {
    super.initState();
    widget.onSelected(selectedType);
  }

  void _update(DebtType type) {
    selectedType = type;
    setState(() {});
    widget.onSelected(type);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: DebtType.values.map((type) {
        final isSelected = selectedType == type;
        return MaterialYouChip(
          title: type.name(context),
          isSelected: isSelected,
          onPressed: () => _update(type),
        );
      }).toList(),
    );
  }
}
