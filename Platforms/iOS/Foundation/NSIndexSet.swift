
class IndexSet : Object, Copying, MutableCopying, SecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  func isEqualTo(indexSet: IndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqualTo(value: Int) -> Int
  func indexLessThanOrEqualTo(value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: RangePointer) -> Int
  @available(iOS 2.0, *)
  func countOfIndexesIn(range: NSRange) -> Int
  func contains(value: Int) -> Bool
  func containsIn(range: NSRange) -> Bool
  func contains(indexSet: IndexSet) -> Bool
  func intersectsIndexesIn(range: NSRange) -> Bool
  @available(iOS 4.0, *)
  func enumerate(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerate(opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateIn(range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func index(opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexIn(range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func indexes(opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func indexesIn(range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 5.0, *)
  func enumerateRanges(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func enumerateRanges(opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func enumerateRangesIn(range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension IndexSet : SequenceType {
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class MutableIndexSet : IndexSet {
  func add(indexSet: IndexSet)
  func remove(indexSet: IndexSet)
  func removeAllIndexes()
  func add(value: Int)
  func remove(value: Int)
  func addIn(range: NSRange)
  func removeIn(range: NSRange)
  func shiftIndexesStartingAt(index: Int, by delta: Int)
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: Coder)
}
