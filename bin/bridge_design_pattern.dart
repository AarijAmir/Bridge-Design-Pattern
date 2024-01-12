void main(List<String> arguments) {
  Payment order = CardPayment();
  order._iPaymentSystem = CITIPaymentSystem();
  order.makePayments();
}

abstract class IPaymentSystem {
  void processPayment(String paymentSystem);
}

// concrete implementor
class CITIPaymentSystem implements IPaymentSystem {
  @override
  void processPayment(String paymentSystem) {
    // TODO: implement processPayment
    print(
        'This process banking is using CityPaymentSystem gateway $paymentSystem');
  }
}

// concrete implementor
class IDBIPaymentSystem implements IPaymentSystem {
  @override
  void processPayment(String paymentSystem) {
    // TODO: implement processPayment
    print(
        'This process banking is using IDBIPaymentSystem gateway $paymentSystem');
  }
}

// abstraction
abstract class Payment {
  late IPaymentSystem _iPaymentSystem;
  void makePayments();
}

// Refined Payment
class CardPayment extends Payment {
  @override
  void makePayments() {
    _iPaymentSystem.processPayment('Card Payment');
    // TODO: implement makePayments
  }
}

// Refined Payment
class NetBankingPayment extends Payment {
  @override
  void makePayments() {
    _iPaymentSystem.processPayment('Net Banking Payment');
    // TODO: implement makePayments
  }
}
