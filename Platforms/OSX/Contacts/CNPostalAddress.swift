
@available(OSX 10.11, *)
class CNPostalAddress : Object, Copying, MutableCopying, SecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedStringFor(key key: String) -> String
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNPostalAddressStreetKey: String
@available(OSX 10.11, *)
let CNPostalAddressCityKey: String
@available(OSX 10.11, *)
let CNPostalAddressStateKey: String
@available(OSX 10.11, *)
let CNPostalAddressPostalCodeKey: String
@available(OSX 10.11, *)
let CNPostalAddressCountryKey: String
@available(OSX 10.11, *)
let CNPostalAddressISOCountryCodeKey: String
