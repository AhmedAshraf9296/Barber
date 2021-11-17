//     final scoringListModelHeader = scoringListModelHeaderFromJson(jsonString);

// List<ScoringListModelHeader> scoringListModelHeaderFromJson(String str) =>
//     List<ScoringListModelHeader>.from(
//         json.decode(str).map((x) => ScoringListModelHeader.fromJson(x)));
//
// String scoringListModelHeaderToJson(List<ScoringListModelHeader> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ScoringListModelHeader {
  final int sclId;
  final String sclTitle;

  ScoringListModelHeader({
    this.sclId,
    this.sclTitle,
  });

  factory ScoringListModelHeader.fromJson(Map<String, dynamic> json) {
    return  ScoringListModelHeader(
      sclId: json['scl_id'],
      sclTitle: json['scl_title'],
    );
  }

// Map<String, dynamic> toJson() => {
//       'scl_id': sclId,
//       'scl_title': sclTitle,
//     };

}

class ScoringModelHeaderLists {
  final List<dynamic> scoringHeaderList;

  ScoringModelHeaderLists({this.scoringHeaderList});
  factory ScoringModelHeaderLists.fromJson(Map<String, dynamic> json) {
    return ScoringModelHeaderLists(
      scoringHeaderList: json['scoringHeaderList'],
    );
  }
}
