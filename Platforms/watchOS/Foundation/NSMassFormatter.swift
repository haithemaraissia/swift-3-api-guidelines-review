
@available(watchOS 2.0, *)
enum NSMassFormatterUnit : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case gram
  case kilogram
  case ounce
  case pound
  case stone
}
@available(watchOS 2.0, *)
class NSMassFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var isForPersonMassUse: Bool
  func string(fromValue value: Double, unit unit: NSMassFormatterUnit) -> String
  func string(fromKilograms numberInKilograms: Double) -> String
  func unitString(fromValue value: Double, unit unit: NSMassFormatterUnit) -> String
  func unitString(fromKilograms numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<NSMassFormatterUnit>) -> String
}
