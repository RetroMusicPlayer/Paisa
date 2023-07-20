import 'package:equatable/equatable.dart';
import 'package:paisa/core/common_enum.dart';

class AccountEntity extends Equatable {
  const AccountEntity({
    this.name,
    this.bankName,
    this.number,
    this.cardType,
    this.amount,
    this.color,
    this.superId,
  });

  final double? amount;
  final String? bankName;
  final CardType? cardType;
  final int? color;
  final String? name;
  final String? number;
  final int? superId;

  @override
  List<Object?> get props => [
        name,
        bankName,
        number,
        cardType,
        amount,
        color,
        superId,
      ];
}
