
class Archiver : Coder {
  init(forWritingWith mdata: MutableData)
  var archiverData: MutableData { get }
  func encodeRootObject(rootObject: AnyObject)
  func encodeConditionalObject(object: AnyObject?)
  class func archivedDataWith(rootObject rootObject: AnyObject) -> Data
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(trueName: String, intoClassName inArchiveName: String)
  func classNameEncodedFor(trueClassName trueName: String) -> String?
  func replace(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}
class Unarchiver : Coder {
  init?(forReadingWith data: Data)
  var isAtEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObjectWith(data: Data) -> AnyObject?
  class func unarchiveObjectWith(file path: String) -> AnyObject?
  class func decodeClassName(inArchiveName: String, asClassName trueName: String)
  func decodeClassName(inArchiveName: String, asClassName trueName: String)
  class func classNameDecodedFor(archiveClassName inArchiveName: String) -> String
  func classNameDecodedFor(archiveClassName inArchiveName: String) -> String
  func replace(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}
let inconsistentArchiveException: String
extension Object {
  var classForArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: Archiver) -> AnyObject?
  func replacementObjectFor(archiver: Archiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}
