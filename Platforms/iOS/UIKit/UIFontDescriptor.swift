
@available(iOS 7.0, *)
struct UIFontDescriptorSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var traitItalic: UIFontDescriptorSymbolicTraits { get }
  static var traitBold: UIFontDescriptorSymbolicTraits { get }
  static var traitExpanded: UIFontDescriptorSymbolicTraits { get }
  static var traitCondensed: UIFontDescriptorSymbolicTraits { get }
  static var traitMonoSpace: UIFontDescriptorSymbolicTraits { get }
  static var traitVertical: UIFontDescriptorSymbolicTraits { get }
  static var traitUIOptimized: UIFontDescriptorSymbolicTraits { get }
  static var traitTightLeading: UIFontDescriptorSymbolicTraits { get }
  static var traitLooseLeading: UIFontDescriptorSymbolicTraits { get }
  static var classMask: UIFontDescriptorSymbolicTraits { get }
  static var classUnknown: UIFontDescriptorSymbolicTraits { get }
  static var classOldStyleSerifs: UIFontDescriptorSymbolicTraits { get }
  static var classTransitionalSerifs: UIFontDescriptorSymbolicTraits { get }
  static var classModernSerifs: UIFontDescriptorSymbolicTraits { get }
  static var classClarendonSerifs: UIFontDescriptorSymbolicTraits { get }
  static var classSlabSerifs: UIFontDescriptorSymbolicTraits { get }
  static var classFreeformSerifs: UIFontDescriptorSymbolicTraits { get }
  static var classSansSerif: UIFontDescriptorSymbolicTraits { get }
  static var classOrnamentals: UIFontDescriptorSymbolicTraits { get }
  static var classScripts: UIFontDescriptorSymbolicTraits { get }
  static var classSymbolic: UIFontDescriptorSymbolicTraits { get }
}
typealias UIFontDescriptorClass = Int
@available(iOS 7.0, *)
class UIFontDescriptor : Object, Copying, SecureCoding {
  convenience init()
  init?(coder aDecoder: Coder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptorSymbolicTraits { get }
  func object(forKey anAttribute: String) -> AnyObject?
  func fontAttributes() -> [String : AnyObject]
  func matchingFontDescriptors(withMandatoryKeys mandatoryKeys: Set<String>?) -> [UIFontDescriptor]
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: CGAffineTransform)
  class func preferredFontDescriptor(withTextStyle style: String) -> UIFontDescriptor
  init(fontAttributes attributes: [String : AnyObject] = [:])
  func addingAttributes(attributes: [String : AnyObject] = [:]) -> UIFontDescriptor
  func withSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func withSize(newPointSize: CGFloat) -> UIFontDescriptor
  func withMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func withFace(newFace: String) -> UIFontDescriptor
  func withFamily(newFamily: String) -> UIFontDescriptor
  @available(iOS 7.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encode(with aCoder: Coder)
}
@available(iOS 7.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorNameAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFaceAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorSizeAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(iOS 7.0, *)
let UIFontSymbolicTrait: String
@available(iOS 7.0, *)
let UIFontWeightTrait: String
@available(iOS 7.0, *)
let UIFontWidthTrait: String
@available(iOS 7.0, *)
let UIFontSlantTrait: String
@available(iOS 8.2, *)
let UIFontWeightUltraLight: CGFloat
@available(iOS 8.2, *)
let UIFontWeightThin: CGFloat
@available(iOS 8.2, *)
let UIFontWeightLight: CGFloat
@available(iOS 8.2, *)
let UIFontWeightRegular: CGFloat
@available(iOS 8.2, *)
let UIFontWeightMedium: CGFloat
@available(iOS 8.2, *)
let UIFontWeightSemibold: CGFloat
@available(iOS 8.2, *)
let UIFontWeightBold: CGFloat
@available(iOS 8.2, *)
let UIFontWeightHeavy: CGFloat
@available(iOS 8.2, *)
let UIFontWeightBlack: CGFloat
@available(iOS 7.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(iOS 7.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle1: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle2: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle3: String
@available(iOS 7.0, *)
let UIFontTextStyleHeadline: String
@available(iOS 7.0, *)
let UIFontTextStyleSubheadline: String
@available(iOS 7.0, *)
let UIFontTextStyleBody: String
@available(iOS 9.0, *)
let UIFontTextStyleCallout: String
@available(iOS 7.0, *)
let UIFontTextStyleFootnote: String
@available(iOS 7.0, *)
let UIFontTextStyleCaption1: String
@available(iOS 7.0, *)
let UIFontTextStyleCaption2: String
