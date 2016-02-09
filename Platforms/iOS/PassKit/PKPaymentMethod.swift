
@available(iOS 9.0, *)
class PKPaymentMethod : Object {
  var displayName: String? { get }
  var network: String? { get }
  var type: PKPaymentMethodType { get }
  var paymentPass: PKPaymentPass? { get }
  init()
}
@available(iOS 9.0, *)
struct PKPaymentMethodType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var unknown: PKPaymentMethodType { get }
  static var debit: PKPaymentMethodType { get }
  static var credit: PKPaymentMethodType { get }
  static var prepaid: PKPaymentMethodType { get }
  static var store: PKPaymentMethodType { get }
}