
func CFTimeZoneGetTypeID() -> CFTypeID
func CFTimeZoneCopySystem() -> CFTimeZone!
func CFTimeZoneResetSystem()
func CFTimeZoneCopyDefault() -> CFTimeZone!
func CFTimeZoneSetDefault(tz: CFTimeZone!)
func CFTimeZoneCopyKnownNames() -> CFArray!
func CFTimeZoneCopyAbbreviationDictionary() -> CFDictionary!
func CFTimeZoneSetAbbreviationDictionary(dict: CFDictionary!)
func CFTimeZoneCreate(allocator: CFAllocator!, _ name: CFString!, _ data: CFData!) -> CFTimeZone!
func CFTimeZoneCreateWithTimeIntervalFromGMT(allocator: CFAllocator!, _ ti: CFTimeInterval) -> CFTimeZone!
func CFTimeZoneCreateWithName(allocator: CFAllocator!, _ name: CFString!, _ tryAbbrev: Bool) -> CFTimeZone!
func CFTimeZoneGetName(tz: CFTimeZone!) -> CFString!
func CFTimeZoneGetData(tz: CFTimeZone!) -> CFData!
func CFTimeZoneGetSecondsFromGMT(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
func CFTimeZoneCopyAbbreviation(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFString!
func CFTimeZoneIsDaylightSavingTime(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> Bool
@available(watchOS 2.0, *)
func CFTimeZoneGetDaylightSavingTimeOffset(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
@available(watchOS 2.0, *)
func CFTimeZoneGetNextDaylightSavingTimeTransition(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFAbsoluteTime
@available(watchOS 2.0, *)
enum CFTimeZoneNameStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case standard
  case shortStandard
  case daylightSaving
  case shortDaylightSaving
  case generic
  case shortGeneric
}
@available(watchOS 2.0, *)
func CFTimeZoneCopyLocalizedName(tz: CFTimeZone!, _ style: CFTimeZoneNameStyle, _ locale: CFLocale!) -> CFString!
@available(watchOS 2.0, *)
let kCFTimeZoneSystemTimeZoneDidChangeNotification: CFString!
