
import 'package:barber/model/booking_view_model.dart';

class BookingCardModel extends BookingViewModel{
  final double prices;
  final itemDescription;

  BookingCardModel(this.prices, this.itemDescription);

}

List<BookingCardModel> cardModel = [
  // BookingCardModel(1,''),
];