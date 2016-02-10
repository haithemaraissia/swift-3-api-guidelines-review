
let UIPasteboardNameGeneral: String
let UIPasteboardNameFind: String
@available(iOS 3.0, *)
class UIPasteboard : Object {
  class func general() -> UIPasteboard
  /*not inherited*/ init?(name pasteboardName: String, create: Bool)
  class func withUniqueName() -> UIPasteboard
  var name: String { get }
  class func remove(name pasteboardName: String)
  var isPersistent: Bool
  var changeCount: Int { get }
  func pasteboardTypes() -> [String]
  func containsTypes(pasteboardTypes: [String]) -> Bool
  func dataFor(pasteboardType pasteboardType: String) -> Data?
  func valueFor(pasteboardType pasteboardType: String) -> AnyObject?
  func setValue(value: AnyObject, forPasteboardType pasteboardType: String)
  func setData(data: Data, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func pasteboardTypesFor(itemSet itemSet: IndexSet?) -> [AnyObject]?
  func containsTypes(pasteboardTypes: [String], inItemSet itemSet: IndexSet?) -> Bool
  func itemSetWith(pasteboardTypes pasteboardTypes: [AnyObject]) -> IndexSet?
  func valuesFor(pasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [AnyObject]?
  func dataFor(pasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [AnyObject]?
  var items: [AnyObject]
  func addItems(items: [[String : AnyObject]])
  init()
}
let UIPasteboardChangedNotification: String
let UIPasteboardChangedTypesAddedKey: String
let UIPasteboardChangedTypesRemovedKey: String
let UIPasteboardRemovedNotification: String
var UIPasteboardTypeListString: NSArray
var UIPasteboardTypeListURL: NSArray
var UIPasteboardTypeListImage: NSArray
var UIPasteboardTypeListColor: NSArray
extension UIPasteboard {
  var string: String?
  var strings: [String]?
  @NSCopying var url: URL?
  var urls: [URL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
}
