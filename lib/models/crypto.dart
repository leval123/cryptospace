class Crypto {
  String id;
  String name;
  int rank;
  double priceUsd;
  String symbol;
  double changePercent24Hr;

  double marketCapUsd;

  Crypto({
    required this.id,
    required this.name,
    required this.rank,
    required this.priceUsd,
    required this.symbol,
    required this.changePercent24Hr,
    required this.marketCapUsd,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      id: json['id'],
      name: json['name'],
      rank: int.parse(json['rank']),
      priceUsd: double.parse(json['priceUsd']),
      symbol: json['symbol'],
      changePercent24Hr: double.parse(json['changePercent24Hr']),
      marketCapUsd: double.parse(json['marketCapUsd']),
    );
  }
}
