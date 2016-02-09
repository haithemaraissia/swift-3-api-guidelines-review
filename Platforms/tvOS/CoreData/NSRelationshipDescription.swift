
enum NSDeleteRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noActionDeleteRule
  case nullifyDeleteRule
  case cascadeDeleteRule
  case denyDeleteRule
}
@available(tvOS 3.0, *)
class NSRelationshipDescription : NSPropertyDescription {
  unowned(unsafe) var destinationEntity: @sil_unmanaged NSEntityDescription?
  unowned(unsafe) var inverseRelationship: @sil_unmanaged NSRelationshipDescription?
  var maxCount: Int
  var minCount: Int
  var deleteRule: NSDeleteRule
  var isToMany: Bool { get }
  @available(tvOS 3.0, *)
  @NSCopying var versionHash: Data { get }
  @available(tvOS 5.0, *)
  var isOrdered: Bool
  init()
  init?(coder aDecoder: Coder)
}