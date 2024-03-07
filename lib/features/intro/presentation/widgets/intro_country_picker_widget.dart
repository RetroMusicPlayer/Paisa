import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:paisa/config/routes.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:paisa/features/intro/presentation/cubit/country_picker_cubit.dart';
import 'package:paisa/features/intro/presentation/widgets/intro_image_picker_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroCountryPickerWidget extends StatefulWidget {
  const IntroCountryPickerWidget({
    Key? key,
    required this.forceCountrySelector,
    required this.countryCubit,
  }) : super(key: key);

  final bool forceCountrySelector;
  final CountryPickerCubit countryCubit;

  @override
  State<IntroCountryPickerWidget> createState() =>
      _IntroCountryPickerWidgetState();
}

class _IntroCountryPickerWidgetState extends State<IntroCountryPickerWidget> {
  @override
  void initState() {
    super.initState();
    if (widget.forceCountrySelector) {
      widget.countryCubit.fetchCountry();
    } else {
      widget.countryCubit.checkForData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic>? json = settings.get(userCountryKey);
    CountryEntity? countryModel;
    if (json != null) {
      countryModel = CountryEntity.fromJson(
          json.map<String, dynamic>((key, value) => MapEntry(key, value)));
    }
    return BlocProvider(
      create: (context) => widget.countryCubit,
      child: PaisaAnnotatedRegionWidget(
        color: context.background,
        child: BlocListener<CountryPickerCubit, CountryPickerState>(
          listener: (context, state) {
            if (state is NavigateToLading) {
              context.goNamed(RoutesName.landing.name);
            }
          },
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  IntroTopWidget(
                    title: context.loc.selectCurrency,
                    icon: Icons.language_rounded,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: PaisaTextFormField(
                      hintText: context.loc.search,
                      controller: TextEditingController(),
                      keyboardType: TextInputType.name,
                      onChanged: (value) =>
                          widget.countryCubit.filterCountry(value),
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder<CountryPickerCubit, CountryPickerState>(
                      builder: (context, state) {
                        if (state is CountriesState) {
                          return ScreenTypeLayout.builder(
                            mobile: (p0) => CountriesWidget(
                              countries: state.countries,
                              crossAxisCount: 2,
                              selectedModel: countryModel,
                            ),
                            tablet: (p0) => CountriesWidget(
                              countries: state.countries,
                              crossAxisCount: 3,
                              selectedModel: countryModel,
                            ),
                            desktop: (p0) => CountriesWidget(
                              countries: state.countries,
                              crossAxisCount: 6,
                              selectedModel: countryModel,
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
    this.selectedModel,
  });

  final List<CountryEntity> countries;
  final int crossAxisCount;
  final CountryEntity? selectedModel;

  @override
  State<CountriesWidget> createState() => _CountriesWidgetState();
}

class _CountriesWidgetState extends State<CountriesWidget> {
  late CountryEntity? selectedModel = widget.selectedModel;

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
        final CountryEntity model = widget.countries[index];
        return CountryWidget(
          countryModel: model,
          selected: selectedModel == model,
          onSelected: (countryModel) {
            setState(() {
              selectedModel = countryModel;
            });
            BlocProvider.of<CountryPickerCubit>(context).selectedCountry =
                countryModel;
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
  final Function(CountryEntity countryModel) onSelected;
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
        onTap: () => onSelected(countryModel),
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
                countryModel.symbol ?? '\$',
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
            )
          ],
        ),
      ),
    );
  }
}
