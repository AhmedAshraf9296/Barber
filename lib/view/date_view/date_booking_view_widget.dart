// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
//
// class DateTimeBookingView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//             child: Column(
//           children: [
//             Text('Hi'),
//             FlatButton(
//                 onPressed: () {
//                   ShowDate();
//                 },
//                 child: Text('ShowDatePicker'))
//           ],
//         )),
//       ),
//     );
//   }
// }
//
//
// class ShowDate extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child:  SfDateRangePicker(
//           view: DateRangePickerView.year,
//           monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
//           selectionMode: DateRangePickerSelectionMode.single,
//         ),
//       ),
//     );
//   }
// }
//

import 'dart:ui';

import 'package:barber/model/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateBookingViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingViewModel>(
        builder: (controller) => BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.brown,
                elevation: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.only(bottom: 20),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SfDateRangePicker(
                        todayHighlightColor: Colors.red,
                        selectionColor: Colors.green,
                        onSelectionChanged: controller.getDate,
                        initialSelectedRanges: [
                          PickerDateRange(DateTime.now(),DateTime.utc(2022))
                        ],
                        initialSelectedDates: [DateTime.now(),DateTime.now()],
                        selectionMode: DateRangePickerSelectionMode.single,
                        initialSelectedRange: PickerDateRange(
                            DateTime.now().subtract(const Duration(days: 4)),
                            DateTime.now().add(const Duration(days: 3))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          FlatButton(
                              onPressed: () {
                                print(controller.selectedDate);
                                Get.back();
                              },
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}

// class updateDateTime extends BookingViewModel{
//
//   String _selectedDate = '';
//   String _dateCount = '';
//   String _range = '';
//   String _rangeCount = '';
//
//   void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
//     /// The argument value will return the changed date as [DateTime] when the
//     /// widget [SfDateRangeSelectionMode] set as single.
//     ///
//     /// The argument value will return the changed dates as [List<DateTime>]
//     /// when the widget [SfDateRangeSelectionMode] set as multiple.
//     ///
//     /// The argument value will return the changed range as [PickerDateRange]
//     /// when the widget [SfDateRangeSelectionMode] set as range.
//     ///
//     /// The argument value will return the changed ranges as
//     /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
//     /// multi range.
//     if (args.value is PickerDateRange) {
//       _range =
//           DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
//               ' - ' +
//               DateFormat('dd/MM/yyyy')
//                   .format(args.value.endDate ?? args.value.startDate)
//                   .toString();
//     } else if (args.value is DateTime) {
//       _selectedDate = args.value.toString();
//     } else if (args.value is List<DateTime>) {
//       _dateCount = args.value.length.toString();
//     } else {
//       _rangeCount = args.value.length.toString();
//     }
//     update();
//     print(_selectedDate);
//     changeSelectedDate(_selectedDate);
//   }
// }
