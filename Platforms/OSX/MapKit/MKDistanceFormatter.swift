
@available(OSX 10.9, *)
class MKDistanceFormatter : Formatter {
  func stringFrom(distance distance: CLLocationDistance) -> String
  func distanceFrom(distance: String) -> CLLocationDistance
  @NSCopying var locale: Locale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.9, *)
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case metric
  case imperial
  case imperialWithYards
}
@available(OSX 10.9, *)
enum MKDistanceFormatterUnitStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case abbreviated
  case full
}