
class Locale : Object, Copying, SecureCoding {
  func objectFor(key key: AnyObject) -> AnyObject?
  func displayNameFor(key key: AnyObject, value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
extension Locale {
  var localeIdentifier: String { get }
}
extension Locale {
  @available(tvOS 2.0, *)
  class func autoupdatingCurrent() -> Locale
  class func current() -> Locale
  class func system() -> Locale
}
extension Locale {
  class func availableLocaleIdentifiers() -> [String]
  class func isoLanguageCodes() -> [String]
  class func isoCountryCodes() -> [String]
  class func isoCurrencyCodes() -> [String]
  @available(tvOS 2.0, *)
  class func commonISOCurrencyCodes() -> [String]
  @available(tvOS 2.0, *)
  class func preferredLanguages() -> [String]
  class func componentsFrom(localeIdentifier string: String) -> [String : String]
  class func localeIdentifierFrom(components dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFrom(string: String) -> String
  class func canonicalLanguageIdentifierFrom(string: String) -> String
  @available(tvOS 4.0, *)
  class func localeIdentifierFrom(windowsLocaleCode lcid: UInt32) -> String?
  @available(tvOS 4.0, *)
  class func windowsLocaleCodeFrom(localeIdentifier localeIdentifier: String) -> UInt32
  @available(tvOS 4.0, *)
  class func characterDirectionFor(language isoLangCode: String) -> LocaleLanguageDirection
  @available(tvOS 4.0, *)
  class func lineDirectionFor(language isoLangCode: String) -> LocaleLanguageDirection
}
enum LocaleLanguageDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case leftToRight
  case rightToLeft
  case topToBottom
  case bottomToTop
}
@available(tvOS 2.0, *)
let currentLocaleDidChangeNotification: String
let localeIdentifier: String
let localeLanguageCode: String
let localeCountryCode: String
let localeScriptCode: String
let localeVariantCode: String
let localeExemplarCharacterSet: String
let localeCalendar: String
let localeCollationIdentifier: String
let localeUsesMetricSystem: String
let localeMeasurementSystem: String
let localeDecimalSeparator: String
let localeGroupingSeparator: String
let localeCurrencySymbol: String
let localeCurrencyCode: String
@available(tvOS 4.0, *)
let localeCollatorIdentifier: String
@available(tvOS 4.0, *)
let localeQuotationBeginDelimiterKey: String
@available(tvOS 4.0, *)
let localeQuotationEndDelimiterKey: String
@available(tvOS 4.0, *)
let localeAlternateQuotationBeginDelimiterKey: String
@available(tvOS 4.0, *)
let localeAlternateQuotationEndDelimiterKey: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierGregorian instead")
let gregorianCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierBuddhist instead")
let buddhistCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierChinese instead")
let chineseCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierHebrew instead")
let hebrewCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamic instead")
let islamicCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamicCivil instead")
let islamicCivilCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierJapanese instead")
let japaneseCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierRepublicOfChina instead")
let republicOfChinaCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierPersian instead")
let persianCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierIndian instead")
let indianCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierISO8601 instead")
let iso8601Calendar: String
