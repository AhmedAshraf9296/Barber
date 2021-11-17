import 'package:barber/model/booking_view_model.dart';
import 'package:barber/view/constance.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class ItemView extends StatelessWidget {
  // final int itemCode;
  // final String itemDescription;
  // final double itemPrice;
  var selected = false.obs;

  // ItemModel(this.itemCode, this.itemDescription, this.itemPrice);

  // List<int> itemCode = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  // List<String> itemDescription = <String>[
  //   'HAIR CUT',
  //   'BEARD',
  //   'BEARD STEAM',
  //   'BLOW DRY',
  //   'HAIR CREATE TREATMENT',
  //   'HAIR OIL TREATMENT',
  //   'FACIALS (SCRUB - STEAM)',
  //   'RENSAGE',
  //   'STRAIGHTENING LIGHT HAIR',
  //   'STRAIGHTENING FULL HAIR',
  //   'HOT & COLD TOWEL',
  //   'WAX HAIR REMOVAL',
  //   'PROTEIN (Depends On Hair Length)',
  //   'HAIR DYE',
  //   'GROOM PACKAGE Indoor/Outdoor',
  // ];

  // List<double> itemPrice = <double>[
  //   100,
  //   50,
  //   60,
  //   60,
  //   150,
  //   180,
  //   90,
  //   100,
  //   150,
  //   200,
  //   120,
  //   60,
  //   400,
  //   130,
  //   500
  // ];

  // List<String> itemImages = [
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/240145186_372986527597960_2786060940373824298_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeFxV-mFFrwxsHX7-VteMF51WBNPlLdaBMRYE0-Ut1oExORlNT2yClwTwRyDgEM-btf9BMGTTzNUCwmzBBsvebJg&_nc_ohc=jtK-wXXLWlgAX8RRQ41&_nc_oc=AQnqPcoe3jKTNcgk3OtlAQwVigLFNJFGWyhyikWntqhxMHVSXyDx7udd23yAl6swgp4&_nc_ht=scontent.fcai19-2.fna&oh=7800f53ac9be762ff7db5433cbd05674&oe=6154ACCF',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/237213045_364675111762435_4923280709645557498_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeG0UpojGr6AHT6zSRKf3GLOUzIq9irP7QVTMir2Ks_tBdDh2nBmb227N8ZFu0XhtfaOJRLpDXl6BUOkvQo3N_9m&_nc_ohc=_44XhqUjgI4AX-vVoVX&_nc_ht=scontent.fcai19-2.fna&oh=7a2f99a9b58e3d2c287a0050c14e6d6a&oe=61543AD5',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/231302741_362082092021737_6266043939531771425_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEuTUrV5mIPlZX3z9ns4tI4ckwBNN4DG6JyTAE03gMborIvRCh9HU6NBeOQPoT2M3Ea46C5nBDH_vnFmwS-XAvY&_nc_ohc=TC5z_vC9YFAAX-F202B&tn=vKBwy1JU12oxeER7&_nc_ht=scontent.fcai19-2.fna&oh=23f7c5798d6e55af7da5f16f27911d5b&oe=615813EE',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/228119475_356824219214191_3719070961562526983_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeFNoxXeNFO43w4t00_g-bXg71NAzEFqB2zvU0DMQWoHbDX_zRkB2sn5ApjvOSbY8F_KFZkxjHibeRXllJlNE5NF&_nc_ohc=Gp7-5tKLsVMAX_uQXQH&_nc_ht=scontent.fcai19-2.fna&oh=d3265e1089991d0b6d2c8d23f4920b5b&oe=6157DB35',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/224280464_351101296453150_5518893082545817947_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHVLJcfDq1sN_i7KpX69HDsJKFD5-Okfz0koUPn46R_PRkhSuBlDOWR0d-P4xGTJAHjyoLMDJh9juVbeXVkHtqT&_nc_ohc=pEhUiOTN2S8AX_M60A_&_nc_ht=scontent.fcai19-2.fna&oh=39afadfff570ca96ffca7d024f87370d&oe=61547247',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/117257142_176403077256307_4234890604057774280_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFxsWEqTtdX9DNR1CAh4fO29hq-ZGaxrbj2Gr5kZrGtuPDbogQ89XIJus1Ps4AYGVo0QKKFTCINR7SyXY4conVK&_nc_ohc=12kANh9z2f8AX_pdfOf&_nc_ht=scontent.fcai19-2.fna&oh=f541c510a64bb8c9f3cea80373625450&oe=6157130D',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/117878959_176403053922976_5446096602312409539_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeH48d73l7BaYemU432IPGBfGtLh90JrNpEa0uH3Qms2kYssl3xatss2nFQD8_HnWiL7YxwloHIyarHPKDgtLLlh&_nc_ohc=yAl_M3PQSkUAX-KtuAa&_nc_oc=AQnLO46nC_ec5ugYbK479IFDLdJUtW2fvVg1hz8NE-KXft8RSW5kWpm88o_Ze2FTLEU&_nc_ht=scontent.fcai19-2.fna&oh=b915e443e1307fc8272c907ad84f92e1&oe=6157E306',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/117395008_176403030589645_5941428925542398762_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHfoK0drFzNrm281UXFW1u6hUcT2vp2zRiFRxPa-nbNGCFGzHG5zDid8_7ABrWeQZHfm2m5BuDTpG5IReaqkElp&_nc_ohc=zMGJr1nLfMEAX8YVop1&_nc_oc=AQlrgvJHoAEFGxWn5ES_Wptm-H7wESSwTNPx0Eyv-xsUAIBga9GAoIfFt5BT7MtQ8Uc&_nc_ht=scontent.fcai19-2.fna&oh=5b049bd3e13b99fb244dc5a8393e3ab9&oe=6157FB27',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/89846907_130954058467876_6559777321539076096_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeF2iL_G143Luw2tXtdlabP_eX6m8fCPumF5fqbx8I-6YcGtCael9YZioNgT_siGIZSQALSbLvgCaLruZaYE6wjs&_nc_ohc=Mnhq1UvwW10AX-sC9d-&tn=vKBwy1JU12oxeER7&_nc_ht=scontent.fcai19-2.fna&oh=db9899bbe82bcbcf1349589d5f2eed2e&oe=61559702',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/88183247_126573452239270_8545536050477400064_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEMOE5J23ntFAAuvCbYDeXmGXsWokdQAPAZexaiR1AA8LrAlUd1i5Ifha9DrgcDavFFFmKJQIMsYZP_MuXBfzKf&_nc_ohc=LQ862kk0AU0AX-gVDai&_nc_ht=scontent.fcai19-2.fna&oh=c9941fcfa0dba2d9c722df141a08d525&oe=61581BD9',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/87291279_126573408905941_3202881838477475840_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGKWiBvUtQXzJrrbEFVUJI-IPJw3YyHK20g8nDdjIcrbe-8lvcpn3HoH_YIu1Ec7WA-vsmkg52cPRRed_sWgaV7&_nc_ohc=eXB5hBW50IcAX8UTd2O&_nc_ht=scontent.fcai19-2.fna&oh=c33a130cb07a20dd7c7528fccb3e9874&oe=615775E7',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/240145186_372986527597960_2786060940373824298_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeFxV-mFFrwxsHX7-VteMF51WBNPlLdaBMRYE0-Ut1oExORlNT2yClwTwRyDgEM-btf9BMGTTzNUCwmzBBsvebJg&_nc_ohc=jtK-wXXLWlgAX8RRQ41&_nc_oc=AQnqPcoe3jKTNcgk3OtlAQwVigLFNJFGWyhyikWntqhxMHVSXyDx7udd23yAl6swgp4&_nc_ht=scontent.fcai19-2.fna&oh=7800f53ac9be762ff7db5433cbd05674&oe=6154ACCF',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/237213045_364675111762435_4923280709645557498_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeG0UpojGr6AHT6zSRKf3GLOUzIq9irP7QVTMir2Ks_tBdDh2nBmb227N8ZFu0XhtfaOJRLpDXl6BUOkvQo3N_9m&_nc_ohc=_44XhqUjgI4AX-vVoVX&_nc_ht=scontent.fcai19-2.fna&oh=7a2f99a9b58e3d2c287a0050c14e6d6a&oe=61543AD5',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/231302741_362082092021737_6266043939531771425_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEuTUrV5mIPlZX3z9ns4tI4ckwBNN4DG6JyTAE03gMborIvRCh9HU6NBeOQPoT2M3Ea46C5nBDH_vnFmwS-XAvY&_nc_ohc=TC5z_vC9YFAAX-F202B&tn=vKBwy1JU12oxeER7&_nc_ht=scontent.fcai19-2.fna&oh=23f7c5798d6e55af7da5f16f27911d5b&oe=615813EE',
  //   'https://scontent.fcai19-2.fna.fbcdn.net/v/t1.6435-9/228119475_356824219214191_3719070961562526983_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeFNoxXeNFO43w4t00_g-bXg71NAzEFqB2zvU0DMQWoHbDX_zRkB2sn5ApjvOSbY8F_KFZkxjHibeRXllJlNE5NF&_nc_ohc=Gp7-5tKLsVMAX_uQXQH&_nc_ht=scontent.fcai19-2.fna&oh=d3265e1089991d0b6d2c8d23f4920b5b&oe=6157DB35',
  // ];

  List<dynamic> selectIcheckList = <dynamic>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListView.separated(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              child: ExpansionCard(
                                background: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: FadeInImage.memoryNetwork(
                                    image: controller.productImage[index],
                                    placeholder: kTransparentImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Custom_Text(
                                        text: controller.itemDescription[index],
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                .26),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .89,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade600,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight:
                                                    Radius.circular(8)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Custom_Text(
                                                text: 'Price : ',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWieght: FontWeight.bold,
                                              ),
                                              Custom_Text(
                                                text: controller
                                                    .itemPrice[index]
                                                    .toString(),
                                                color: Colors.white,
                                              ),
                                              Custom_Text(
                                                text: ' EGP',
                                                color: Colors.white,
                                              ),
                                              Obx(
                                                () => Checkbox(
                                                    value:
                                                        selectIcheckList[index],
                                                    onChanged: (value) {
                                                      selectIcheckList[index] =
                                                          value;
                                                      controller
                                                          .calcItemsPrices(
                                                              index, value);
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: controller.itemDescription.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
