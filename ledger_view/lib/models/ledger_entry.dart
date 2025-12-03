class LedgerEntry {
  final String date;
  final String toBy;
  final String particulars;
  final String vchType;
  final String vchNo;
  final String debit;
  final String credit;

  const LedgerEntry({
    required this.date,
    required this.toBy,
    required this.particulars,
    required this.vchType,
    required this.vchNo,
    required this.debit,
    required this.credit,
  });

  bool get isEmpty =>
      date.isEmpty &&
      toBy.isEmpty &&
      particulars.isEmpty &&
      vchType.isEmpty &&
      vchNo.isEmpty &&
      debit.isEmpty &&
      credit.isEmpty;
}

class LedgerResult {
  final String customerName;
  final String dateRange;
  final List<LedgerEntry> entries;
  final String totalDebit;
  final String totalCredit;
  final String closingBalance;

  const LedgerResult({
    required this.customerName,
    required this.dateRange,
    required this.entries,
    required this.totalDebit,
    required this.totalCredit,
    required this.closingBalance,
  });
}
