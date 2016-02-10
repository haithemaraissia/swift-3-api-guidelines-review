
@available(watchOS 2.0, *)
enum PKPaymentPassActivationState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case activated
  case requiresActivation
  case activating
  case suspended
  case deactivated
}
@available(watchOS 2.0, *)
class PKPaymentPass : PKPass {
  var primaryAccountIdentifier: String { get }
  var primaryAccountNumberSuffix: String { get }
  var deviceAccountIdentifier: String { get }
  var deviceAccountNumberSuffix: String { get }
  var activationState: PKPaymentPassActivationState { get }
  init(data: Data, error: ErrorPointer)
  init()
}
