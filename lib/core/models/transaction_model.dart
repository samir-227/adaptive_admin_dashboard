class TransactionItemModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransactionItemModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
