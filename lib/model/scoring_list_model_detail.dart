
import 'dart:convert';

List<ScoringListModelDetail> scoringListModelFromJson(String str) => List<ScoringListModelDetail>.from(json.decode(str).map((x) => ScoringListModelDetail.fromJson(x)));

String scoringListModelToJson(List<ScoringListModelDetail> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ScoringListModelDetail {
  final int sclID;
  final String sclDesc;
  final int sclYesorno;
  final int sclScore;

  ScoringListModelDetail({
    this.sclID,
    this.sclDesc,
    this.sclYesorno,
    this.sclScore,
  });

  factory ScoringListModelDetail.fromJson(Map<String, dynamic> json) =>
      ScoringListModelDetail(
        sclID: json["scl_h_id"],
        sclDesc: json["scl_desc"],
        sclYesorno: json["scl_yesorno"],
        sclScore: json["scl_score"],
      );

  Map<String, dynamic> toJson() => {
        "scl_h_id": sclID,
        "scl_desc": sclDesc,
        "scl_yesorno": sclYesorno,
        "scl_score": sclScore,
      };
}
