import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color.fromRGBO(0, 197, 105, 1);

const secondaryColor = Color(0xff00A79B);

const CAHECD_SCL_DATA = 'CAHECD_SCL_DATA';



final String tableNameHeader = 'ScoringListHeader';

final String tableNameDetail = 'scoringlistdetail';


final String sclId = 'scl_h_id';

final String sclDesc = 'scl_desc';

final String sclYesOrNo = 'scl_yesorno';

final String sclScore = 'scl_score';

final String sclTitle = 'scl_title';


///////////////////


const kPurple = Color(0xFF6F51FF);
const kYellow = Color(0xFFFFAD03);
const kGreen = Color(0xFF22B274);
const kPink = Color(0xFFEB1E79);
const kIndigo = Color(0xFF000A45);
const kBlack = Color(0xFF4C4C4C);
const kGrey = Color(0xFFACACAC);

var kTitleStyle = GoogleFonts.roboto(
  color: kBlack,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
var kSubtitleStyle = GoogleFonts.roboto(
  color: kGrey,
  fontSize: 14.0,
);
var kTitleItem = GoogleFonts.roboto(
  color: kBlack,
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);
var kSubtitleItem = GoogleFonts.roboto(
  color: kGrey,
  fontSize: 12.0,
);
var kHintStyle = GoogleFonts.roboto(
  color: kGrey,
  fontSize: 12.0,
);

List<String> CLientsImages = [
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245645054_403946921168587_8391712733925218443_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFPb2q-kN-w8-hSmRDLmxHWVoTi8Igwll1WhOLwiDCWXQKezmuM5D7OSQP-fW7QHZfORiIhpl9xNocYjfC_TOEf&_nc_ohc=udrwpeGPdJEAX-4bQWG&_nc_ht=scontent.faly3-2.fna&oh=3bcc630c6df6719316852382feada3e4&oe=6198DDED',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245343544_403473734549239_5554490106874234130_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHu1V92J2hm_p3VqxhtF-kXMynQDCexhLgzKdAMJ7GEuIRbbLfqF5JQneu8Fjx_hj03LV_INCa9QtJhrX5gt6UZ&_nc_ohc=ccUF3yFvx6AAX-dDdt2&_nc_ht=scontent.faly3-2.fna&oh=6ca3532ff200bba72909340ab751dafb&oe=6199F780',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245223496_402711114625501_1453782976893435433_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHX3pmpF3NpHyuTn6gT5p86NCAMXid5-kQ0IAxeJ3n6REgitZWT4sx2g-qCbRnjx4_EZzy0o0I5FMD-Jx_8d5jL&_nc_ohc=R5Tg2Vkk9J8AX-dAEHr&_nc_ht=scontent.faly3-2.fna&oh=8381db309355d481d5c141e923fc123b&oe=61978675',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/244658776_399520094944603_3717517805634011389_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEMzLE296lJV1BLCE5EetBsmDY6PapOlMGYNjo9qk6UwTVamO_hbBcTzzte8RCGavhpn0yrpaq4rlDRLui6I4jI&_nc_ohc=B0EZlQyHm8kAX_qrS-u&_nc_ht=scontent.faly3-2.fna&oh=76886495a2ee1ab7e0f809f8d165003d&oe=619A4601',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/242069864_385443153018964_5237296338785691137_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeGZaBXJrJZhtDb56YCZiXIIBAzcqcznqOcEDNypzOeo57nCTatDHEMtCqXfPZ5uE1PNR1Z320HOJg9lBvGtIbO8&_nc_ohc=mHhOiGdRQi4AX_wkgAx&_nc_ht=scontent.faly3-2.fna&oh=2388c5886b4e0a4917d975b90903738c&oe=6197F388',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/241175281_381580516738561_5468164754164880603_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH5pVUYAYBCmHj9-LLav04Qlwp-T4blNbyXCn5PhuU1vBd1tKPdQCvYmntne-Edp0BFJDqzrnXuruzTn4_5I3dU&_nc_ohc=UVWYhuph5YcAX8VQSrT&_nc_ht=scontent.faly3-2.fna&oh=15334072e5f7c3b84281d11d5217044b&oe=6197795A',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/231604569_362727055290574_7122076820463337963_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF1cGh0OpwGzUuZu_rYEDmcyiORwt_0Q6vKI5HC3_RDq1pJkyXRedOlmTrlFbt0oPlu75tf7PRb3HMCa0xuB3yN&_nc_ohc=xMuJy7aBdGQAX_PYKlM&_nc_ht=scontent.faly3-2.fna&oh=8f4b12dc0ebe37a46ec151971c75dec4&oe=619730F1',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/228958029_358788322351114_653155574175752958_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEx6YI6vw73XA9NTN4ccUDhbc917RTwefxtz3XtFPB5_BYxtSDddTPe4jSCRYOU30zPS7K9tjsb020KxMaFGFmM&_nc_ohc=nRQBsCXtrbsAX_rHCMK&_nc_ht=scontent.faly3-2.fna&oh=506a77d947e6dab0461434e975142b0c&oe=6197F2C4',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/222653661_358788329017780_7299190892783177666_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH0uFIy-1c16RE0CsArt0nHibebUz9x1zyJt5tTP3HXPOl84miGe0h91Zrs5HFTtgVlpRlTPxl-g-DdTRNb6WE2&_nc_ohc=ZwbsPUzNJogAX8Zdx7n&_nc_ht=scontent.faly3-2.fna&oh=a6f7f3203976831ce9811d7437c2d84b&oe=6197FD8C',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/241175281_381580516738561_5468164754164880603_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH5pVUYAYBCmHj9-LLav04Qlwp-T4blNbyXCn5PhuU1vBd1tKPdQCvYmntne-Edp0BFJDqzrnXuruzTn4_5I3dU&_nc_ohc=UVWYhuph5YcAX8VQSrT&_nc_ht=scontent.faly3-2.fna&oh=15334072e5f7c3b84281d11d5217044b&oe=6197795A',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/231604569_362727055290574_7122076820463337963_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF1cGh0OpwGzUuZu_rYEDmcyiORwt_0Q6vKI5HC3_RDq1pJkyXRedOlmTrlFbt0oPlu75tf7PRb3HMCa0xuB3yN&_nc_ohc=xMuJy7aBdGQAX_PYKlM&_nc_ht=scontent.faly3-2.fna&oh=8f4b12dc0ebe37a46ec151971c75dec4&oe=619730F1',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/228958029_358788322351114_653155574175752958_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEx6YI6vw73XA9NTN4ccUDhbc917RTwefxtz3XtFPB5_BYxtSDddTPe4jSCRYOU30zPS7K9tjsb020KxMaFGFmM&_nc_ohc=nRQBsCXtrbsAX_rHCMK&_nc_ht=scontent.faly3-2.fna&oh=506a77d947e6dab0461434e975142b0c&oe=6197F2C4',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/222653661_358788329017780_7299190892783177666_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH0uFIy-1c16RE0CsArt0nHibebUz9x1zyJt5tTP3HXPOl84miGe0h91Zrs5HFTtgVlpRlTPxl-g-DdTRNb6WE2&_nc_ohc=ZwbsPUzNJogAX8Zdx7n&_nc_ht=scontent.faly3-2.fna&oh=a6f7f3203976831ce9811d7437c2d84b&oe=6197FD8C',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245645054_403946921168587_8391712733925218443_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFPb2q-kN-w8-hSmRDLmxHWVoTi8Igwll1WhOLwiDCWXQKezmuM5D7OSQP-fW7QHZfORiIhpl9xNocYjfC_TOEf&_nc_ohc=udrwpeGPdJEAX-4bQWG&_nc_ht=scontent.faly3-2.fna&oh=3bcc630c6df6719316852382feada3e4&oe=6198DDED',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245343544_403473734549239_5554490106874234130_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHu1V92J2hm_p3VqxhtF-kXMynQDCexhLgzKdAMJ7GEuIRbbLfqF5JQneu8Fjx_hj03LV_INCa9QtJhrX5gt6UZ&_nc_ohc=ccUF3yFvx6AAX-dDdt2&_nc_ht=scontent.faly3-2.fna&oh=6ca3532ff200bba72909340ab751dafb&oe=6199F780',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245223496_402711114625501_1453782976893435433_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHX3pmpF3NpHyuTn6gT5p86NCAMXid5-kQ0IAxeJ3n6REgitZWT4sx2g-qCbRnjx4_EZzy0o0I5FMD-Jx_8d5jL&_nc_ohc=R5Tg2Vkk9J8AX-dAEHr&_nc_ht=scontent.faly3-2.fna&oh=8381db309355d481d5c141e923fc123b&oe=61978675',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/244658776_399520094944603_3717517805634011389_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEMzLE296lJV1BLCE5EetBsmDY6PapOlMGYNjo9qk6UwTVamO_hbBcTzzte8RCGavhpn0yrpaq4rlDRLui6I4jI&_nc_ohc=B0EZlQyHm8kAX_qrS-u&_nc_ht=scontent.faly3-2.fna&oh=76886495a2ee1ab7e0f809f8d165003d&oe=619A4601',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/242069864_385443153018964_5237296338785691137_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeGZaBXJrJZhtDb56YCZiXIIBAzcqcznqOcEDNypzOeo57nCTatDHEMtCqXfPZ5uE1PNR1Z320HOJg9lBvGtIbO8&_nc_ohc=mHhOiGdRQi4AX_wkgAx&_nc_ht=scontent.faly3-2.fna&oh=2388c5886b4e0a4917d975b90903738c&oe=6197F388',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/241175281_381580516738561_5468164754164880603_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH5pVUYAYBCmHj9-LLav04Qlwp-T4blNbyXCn5PhuU1vBd1tKPdQCvYmntne-Edp0BFJDqzrnXuruzTn4_5I3dU&_nc_ohc=UVWYhuph5YcAX8VQSrT&_nc_ht=scontent.faly3-2.fna&oh=15334072e5f7c3b84281d11d5217044b&oe=6197795A',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/231604569_362727055290574_7122076820463337963_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF1cGh0OpwGzUuZu_rYEDmcyiORwt_0Q6vKI5HC3_RDq1pJkyXRedOlmTrlFbt0oPlu75tf7PRb3HMCa0xuB3yN&_nc_ohc=xMuJy7aBdGQAX_PYKlM&_nc_ht=scontent.faly3-2.fna&oh=8f4b12dc0ebe37a46ec151971c75dec4&oe=619730F1',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/228958029_358788322351114_653155574175752958_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEx6YI6vw73XA9NTN4ccUDhbc917RTwefxtz3XtFPB5_BYxtSDddTPe4jSCRYOU30zPS7K9tjsb020KxMaFGFmM&_nc_ohc=nRQBsCXtrbsAX_rHCMK&_nc_ht=scontent.faly3-2.fna&oh=506a77d947e6dab0461434e975142b0c&oe=6197F2C4',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/222653661_358788329017780_7299190892783177666_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH0uFIy-1c16RE0CsArt0nHibebUz9x1zyJt5tTP3HXPOl84miGe0h91Zrs5HFTtgVlpRlTPxl-g-DdTRNb6WE2&_nc_ohc=ZwbsPUzNJogAX8Zdx7n&_nc_ht=scontent.faly3-2.fna&oh=a6f7f3203976831ce9811d7437c2d84b&oe=6197FD8C',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/241175281_381580516738561_5468164754164880603_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH5pVUYAYBCmHj9-LLav04Qlwp-T4blNbyXCn5PhuU1vBd1tKPdQCvYmntne-Edp0BFJDqzrnXuruzTn4_5I3dU&_nc_ohc=UVWYhuph5YcAX8VQSrT&_nc_ht=scontent.faly3-2.fna&oh=15334072e5f7c3b84281d11d5217044b&oe=6197795A',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/231604569_362727055290574_7122076820463337963_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF1cGh0OpwGzUuZu_rYEDmcyiORwt_0Q6vKI5HC3_RDq1pJkyXRedOlmTrlFbt0oPlu75tf7PRb3HMCa0xuB3yN&_nc_ohc=xMuJy7aBdGQAX_PYKlM&_nc_ht=scontent.faly3-2.fna&oh=8f4b12dc0ebe37a46ec151971c75dec4&oe=619730F1',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/228958029_358788322351114_653155574175752958_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEx6YI6vw73XA9NTN4ccUDhbc917RTwefxtz3XtFPB5_BYxtSDddTPe4jSCRYOU30zPS7K9tjsb020KxMaFGFmM&_nc_ohc=nRQBsCXtrbsAX_rHCMK&_nc_ht=scontent.faly3-2.fna&oh=506a77d947e6dab0461434e975142b0c&oe=6197F2C4',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/222653661_358788329017780_7299190892783177666_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH0uFIy-1c16RE0CsArt0nHibebUz9x1zyJt5tTP3HXPOl84miGe0h91Zrs5HFTtgVlpRlTPxl-g-DdTRNb6WE2&_nc_ohc=ZwbsPUzNJogAX8Zdx7n&_nc_ht=scontent.faly3-2.fna&oh=a6f7f3203976831ce9811d7437c2d84b&oe=6197FD8C',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2',
];


List<String> ItemsImages = [
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245645054_403946921168587_8391712733925218443_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFPb2q-kN-w8-hSmRDLmxHWVoTi8Igwll1WhOLwiDCWXQKezmuM5D7OSQP-fW7QHZfORiIhpl9xNocYjfC_TOEf&_nc_ohc=udrwpeGPdJEAX-4bQWG&_nc_ht=scontent.faly3-2.fna&oh=3bcc630c6df6719316852382feada3e4&oe=6198DDED',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245343544_403473734549239_5554490106874234130_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHu1V92J2hm_p3VqxhtF-kXMynQDCexhLgzKdAMJ7GEuIRbbLfqF5JQneu8Fjx_hj03LV_INCa9QtJhrX5gt6UZ&_nc_ohc=ccUF3yFvx6AAX-dDdt2&_nc_ht=scontent.faly3-2.fna&oh=6ca3532ff200bba72909340ab751dafb&oe=6199F780',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/245223496_402711114625501_1453782976893435433_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHX3pmpF3NpHyuTn6gT5p86NCAMXid5-kQ0IAxeJ3n6REgitZWT4sx2g-qCbRnjx4_EZzy0o0I5FMD-Jx_8d5jL&_nc_ohc=R5Tg2Vkk9J8AX-dAEHr&_nc_ht=scontent.faly3-2.fna&oh=8381db309355d481d5c141e923fc123b&oe=61978675',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/244658776_399520094944603_3717517805634011389_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEMzLE296lJV1BLCE5EetBsmDY6PapOlMGYNjo9qk6UwTVamO_hbBcTzzte8RCGavhpn0yrpaq4rlDRLui6I4jI&_nc_ohc=B0EZlQyHm8kAX_qrS-u&_nc_ht=scontent.faly3-2.fna&oh=76886495a2ee1ab7e0f809f8d165003d&oe=619A4601',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/242069864_385443153018964_5237296338785691137_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeGZaBXJrJZhtDb56YCZiXIIBAzcqcznqOcEDNypzOeo57nCTatDHEMtCqXfPZ5uE1PNR1Z320HOJg9lBvGtIbO8&_nc_ohc=mHhOiGdRQi4AX_wkgAx&_nc_ht=scontent.faly3-2.fna&oh=2388c5886b4e0a4917d975b90903738c&oe=6197F388',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/241175281_381580516738561_5468164754164880603_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH5pVUYAYBCmHj9-LLav04Qlwp-T4blNbyXCn5PhuU1vBd1tKPdQCvYmntne-Edp0BFJDqzrnXuruzTn4_5I3dU&_nc_ohc=UVWYhuph5YcAX8VQSrT&_nc_ht=scontent.faly3-2.fna&oh=15334072e5f7c3b84281d11d5217044b&oe=6197795A',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/231604569_362727055290574_7122076820463337963_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF1cGh0OpwGzUuZu_rYEDmcyiORwt_0Q6vKI5HC3_RDq1pJkyXRedOlmTrlFbt0oPlu75tf7PRb3HMCa0xuB3yN&_nc_ohc=xMuJy7aBdGQAX_PYKlM&_nc_ht=scontent.faly3-2.fna&oh=8f4b12dc0ebe37a46ec151971c75dec4&oe=619730F1',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/228958029_358788322351114_653155574175752958_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEx6YI6vw73XA9NTN4ccUDhbc917RTwefxtz3XtFPB5_BYxtSDddTPe4jSCRYOU30zPS7K9tjsb020KxMaFGFmM&_nc_ohc=nRQBsCXtrbsAX_rHCMK&_nc_ht=scontent.faly3-2.fna&oh=506a77d947e6dab0461434e975142b0c&oe=6197F2C4',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/222653661_358788329017780_7299190892783177666_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH0uFIy-1c16RE0CsArt0nHibebUz9x1zyJt5tTP3HXPOl84miGe0h91Zrs5HFTtgVlpRlTPxl-g-DdTRNb6WE2&_nc_ohc=ZwbsPUzNJogAX8Zdx7n&_nc_ht=scontent.faly3-2.fna&oh=a6f7f3203976831ce9811d7437c2d84b&oe=6197FD8C',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/241175281_381580516738561_5468164754164880603_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH5pVUYAYBCmHj9-LLav04Qlwp-T4blNbyXCn5PhuU1vBd1tKPdQCvYmntne-Edp0BFJDqzrnXuruzTn4_5I3dU&_nc_ohc=UVWYhuph5YcAX8VQSrT&_nc_ht=scontent.faly3-2.fna&oh=15334072e5f7c3b84281d11d5217044b&oe=6197795A',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/231604569_362727055290574_7122076820463337963_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeF1cGh0OpwGzUuZu_rYEDmcyiORwt_0Q6vKI5HC3_RDq1pJkyXRedOlmTrlFbt0oPlu75tf7PRb3HMCa0xuB3yN&_nc_ohc=xMuJy7aBdGQAX_PYKlM&_nc_ht=scontent.faly3-2.fna&oh=8f4b12dc0ebe37a46ec151971c75dec4&oe=619730F1',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/228958029_358788322351114_653155574175752958_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEx6YI6vw73XA9NTN4ccUDhbc917RTwefxtz3XtFPB5_BYxtSDddTPe4jSCRYOU30zPS7K9tjsb020KxMaFGFmM&_nc_ohc=nRQBsCXtrbsAX_rHCMK&_nc_ht=scontent.faly3-2.fna&oh=506a77d947e6dab0461434e975142b0c&oe=6197F2C4',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/222653661_358788329017780_7299190892783177666_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeH0uFIy-1c16RE0CsArt0nHibebUz9x1zyJt5tTP3HXPOl84miGe0h91Zrs5HFTtgVlpRlTPxl-g-DdTRNb6WE2&_nc_ohc=ZwbsPUzNJogAX8Zdx7n&_nc_ht=scontent.faly3-2.fna&oh=a6f7f3203976831ce9811d7437c2d84b&oe=6197FD8C',
  'https://scontent.faly3-2.fna.fbcdn.net/v/t1.6435-9/218036356_345803166982963_7496739020888929550_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHYpyL8P6EuOZkp4PQKi4Eywn2nVPbMQtXCfadU9sxC1UktFHNezFTqruBo3ZQHeZtSrWfHsAPr_TH1awczoltZ&_nc_ohc=_cKdYOS8I9EAX-3RnrP&_nc_ht=scontent.faly3-2.fna&oh=5ebe6a92ff5bd360a712fecb5f0750b1&oe=6199B9F2',
];