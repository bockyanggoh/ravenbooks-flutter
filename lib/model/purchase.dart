class OrderHistoryRecord {
  final String orderId;
  final String username;
  final DateTime orderTime;
  final Details details;
  final List<OrderItem> orderItems;

  OrderHistoryRecord({this.orderId, this.username, this.orderTime, this.details,
    this.orderItems});

  factory OrderHistoryRecord.fromJson(Map<String, dynamic> json) {
    Details orderDetail = Details.fromJson(json['details']);
    List<OrderItem> items = json['delivery'].map((model) => OrderItem.fromJson(model)).toList();
    return OrderHistoryRecord(
      orderId: json['id'],
      username: json['username'],
      orderTime: json['orderTime'],
      details: orderDetail,
      orderItems: items
    );
  }
}

class Details {
  PaymentDetails paymentDetails;
  DeliveryDetails deliveryDetails;

  Details({this.paymentDetails, this.deliveryDetails});

  factory Details.fromJson(Map<String, dynamic> json) {
    PaymentDetails pDetails = json['payment'] == null ? null : PaymentDetails.fromJson(json['payment']);
    DeliveryDetails dDetails = json['delivery'] == null ? null : DeliveryDetails.fromJson(json['delivery']);

    return Details(
      paymentDetails: pDetails,
      deliveryDetails: dDetails
    );
  }
}

class PaymentDetails {
  final String paymentId;
  final String paymentStatus;
  final String paymentClearanceTime;

  PaymentDetails(
      {this.paymentId, this.paymentStatus, this.paymentClearanceTime});

  factory PaymentDetails.fromJson(Map<String, dynamic> json) {
    return PaymentDetails(
      paymentId: json['id'],
      paymentStatus: json['paymentId'],
      paymentClearanceTime: json['paymentClearanceTime']
    );
  }
}

class DeliveryDetails {
  final String trackingId;
  final String scheduledDeliveryDate;
  final String deliveryStatus;
  final String deliveryCompany;

  DeliveryDetails({
    this.trackingId,
    this.scheduledDeliveryDate,
    this.deliveryStatus,
    this.deliveryCompany});

  factory DeliveryDetails.fromJson(Map<String, dynamic> json) {
    return DeliveryDetails(
      trackingId: json['id'],
      scheduledDeliveryDate: json['scheduledDeliveryDate'],
      deliveryStatus: json['deliveryStatus'],
      deliveryCompany: json['deliveryCompany'],
    );
  }
}

class OrderItem {
  final String itemId;
  final String bookName;
  final String bookDescription;
  final String imgLink;
  final int amount;
  OrderItem(
      {this.itemId,
      this.bookName,
      this.bookDescription,
      this.imgLink,
      this.amount});

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem (
      itemId: json['id'],
      bookName: json['bookName'],
      bookDescription: json['bookDescription'],
      imgLink: json['imgLink'],
      amount: json['amount'],
    );
  }
}

