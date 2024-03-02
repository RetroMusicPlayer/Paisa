// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/intro/domain/entities/country_entity.dart';
import 'package:paisa/features/intro/presentation/cubit/country_picker_cubit.dart';
import 'package:paisa/features/intro/presentation/widgets/intro_image_picker_widget.dart';

class IntroCountryPickerWidget extends StatelessWidget {
  const IntroCountryPickerWidget({
    super.key,
    required this.onCountrySelected, // Add this line
  });

  final VoidCallback onCountrySelected; // Add this line

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              IntroTopWidget(
                title: context.loc.selectCurrency,
                icon: Icons.language_rounded,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PaisaTextFormField(
                  hintText: context.loc.search,
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    context.read<CountryPickerCubit>().filterCountry(value);
                  },
                ),
              ),
              Expanded(
                child: BlocBuilder<CountryPickerCubit, CountryPickerState>(
                  builder: (context, state) {
                    if (state is CountriesLoadedState) {
                      return ScreenTypeLayout.builder(
                        mobile: (p0) => CountriesWidget(
                          countries: state.countries,
                          crossAxisCount: 2,
                          onCountrySelected: onCountrySelected,
                        ),
                        tablet: (p0) => CountriesWidget(
                          countries: state.countries,
                          crossAxisCount: 3,
                          onCountrySelected: onCountrySelected,
                        ),
                        desktop: (p0) => CountriesWidget(
                          countries: state.countries,
                          crossAxisCount: 6,
                          onCountrySelected: onCountrySelected,
                        ),
                      );
                    }

                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountriesWidget extends StatefulWidget {
  const CountriesWidget({
    super.key,
    required this.countries,
    required this.crossAxisCount,
    required this.onCountrySelected, // Add this line
  });

  final List<CountryEntity> countries;
  final int crossAxisCount;
  final VoidCallback onCountrySelected; // Add this line
  @override
  State<CountriesWidget> createState() => _CountriesWidgetState();
}

class _CountriesWidgetState extends State<CountriesWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 82, left: 8, right: 8),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 256,
        childAspectRatio: 15 / 12,
      ),
      shrinkWrap: true,
      itemCount: widget.countries.length,
      itemBuilder: (context, index) {
        final CountryEntity? model = widget.countries.elementAtOrNull(index);

        return CountryWidget(
          countryModel: model!,
          selected:
              context.read<CountryPickerCubit>().state.selectedCountry == model,
          onSelected: () {
            setState(() {});
            context.read<CountryPickerCubit>().updateSelectedCountry(model);
            widget.onCountrySelected();
          },
        );
      },
    );
  }
}

class CountryWidget extends StatelessWidget {
  const CountryWidget({
    super.key,
    required this.countryModel,
    required this.selected,
    required this.onSelected,
  });

  final CountryEntity countryModel;
  final VoidCallback onSelected;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return PaisaCard(
      color: context.surface,
      shape: selected
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: 2,
                color: context.primary,
              ),
            )
          : null,
      child: InkWell(
        onTap: () => onSelected(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16,
              ),
              child: Text(
                countryModel.symbol ?? '',
                style: context.titleLarge,
              ),
            ),
            const Spacer(),
            ListTile(
              title: Text(
                countryModel.name,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                countryModel.code,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
