import 'package:hive/hive.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';

part 'account_model.g.dart';

@HiveType(typeId: 2)
class AccountModel extends HiveObject {
  AccountModel({
    required this.name,
    required this.bankName,
    required this.number,
    required this.cardType,
    this.superId,
    required this.amount,
    required this.color,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        name: json["name"],
        bankName: json["bankName"],
        number: json["number"],
        cardType: (json["cardType"] as String).type,
        amount: json["amount"],
        color: json["color"],
      )..superId = json["superId"];

  @HiveField(8, defaultValue: 0)
  double? amount;

  @HiveField(3)
  String? bankName;

  @HiveField(6, defaultValue: CardType.bank)
  CardType? cardType;

  @HiveField(9, defaultValue: 0xFFFFC107)
  int? color;

  @HiveField(0)
  String? name;

  @HiveField(5)
  String? number;

  @HiveField(7, defaultValue: 0)
  int? superId;

  Map<String, dynamic> toJson() => {
        'name': name,
        'bankName': bankName,
        'number': number,
        'cardType': cardType?.name,
        'superId': superId,
        'amount': amount,
        'color': color,
      };

  AccountModel copyWith({
    String? name,
    int? icon,
    String? bankName,
    String? number,
    CardType? cardType,
    int? superId,
    double? amount,
    int? color,
  }) {
    return AccountModel(
      name: name ?? this.name,
      bankName: bankName ?? this.bankName,
      number: number ?? this.number,
      cardType: cardType ?? this.cardType,
      superId: superId ?? this.superId,
      amount: amount ?? this.amount,
      color: color ?? this.color,
    );
  }
}
