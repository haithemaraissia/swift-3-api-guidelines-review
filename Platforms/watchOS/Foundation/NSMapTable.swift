
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(watchOS 2.0, *)
let mapTableStrongMemory: PointerFunctionsOptions
@available(watchOS 2.0, *)
let mapTableCopyIn: PointerFunctionsOptions
@available(watchOS 2.0, *)
let mapTableObjectPointerPersonality: PointerFunctionsOptions
@available(watchOS 2.0, *)
let mapTableWeakMemory: PointerFunctionsOptions
typealias MapTableOptions = Int
@available(watchOS 2.0, *)
class MapTable : Object, Copying, Coding, FastEnumeration {
  init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: PointerFunctions, valuePointerFunctions valueFunctions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [])
  @available(watchOS 2.0, *)
  class func strongToStrongObjects() -> MapTable
  @available(watchOS 2.0, *)
  class func weakToStrongObjects() -> MapTable
  @available(watchOS 2.0, *)
  class func strongToWeakObjects() -> MapTable
  @available(watchOS 2.0, *)
  class func weakToWeakObjects() -> MapTable
  @NSCopying var keyPointerFunctions: PointerFunctions { get }
  @NSCopying var valuePointerFunctions: PointerFunctions { get }
  func object(for aKey: AnyObject?) -> AnyObject?
  func removeObject(for aKey: AnyObject?)
  func setObject(anObject: AnyObject?, for aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> Enumerator
  func objectEnumerator() -> Enumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [Object : AnyObject]
  convenience init()
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
