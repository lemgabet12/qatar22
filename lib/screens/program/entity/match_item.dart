class MatchItem {
  final String dateMatch;
  final String homeTeamName;
  final String awayTeamName;
  final String homeTeamId;
  final String awayTeamId;
  final String homeTeamScore;
  final String awayTeamScore;

  const MatchItem(
      {required this.dateMatch,
      required this.homeTeamName,
      required this.awayTeamName,
      required this.homeTeamId,
      required this.awayTeamId,
      required this.homeTeamScore,
      required this.awayTeamScore});
}
