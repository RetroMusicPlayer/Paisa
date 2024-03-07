import 'package:equatable/equatable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

class AccountEntity extends Equatable {
  const AccountEntity({
    this.name,
    this.bankName,
    this.number,
    this.cardType,
    this.amount,
    this.color,
    this.superId,
    this.isAccountExcluded = false,
    this.isAccountDefault = false,
    this.country,
  });

  final double? amount;
  final String? bankName;
  final CardType? cardType;
  final int? color;
  final String? name;
  final String? number;
  final int? superId;
  final bool? isAccountExcluded;
  final bool? isAccountDefault;
  final CountryEntity? country;

  @override
  List<Object?> get props => [
        name,
        bankName,
        number,
        cardType,
        amount,
        color,
        superId,
        isAccountExcluded,
        isAccountDefault,
        country,
      ];
}
