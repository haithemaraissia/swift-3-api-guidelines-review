
let kCIAttributeFilterName: String
let kCIAttributeFilterDisplayName: String
@available(iOS 9.0, *)
let kCIAttributeDescription: String
@available(iOS 9.0, *)
let kCIAttributeFilterAvailable_Mac: String
@available(iOS 9.0, *)
let kCIAttributeFilterAvailable_iOS: String
@available(iOS 9.0, *)
let kCIAttributeReferenceDocumentation: String
let kCIAttributeFilterCategories: String
let kCIAttributeClass: String
let kCIAttributeType: String
let kCIAttributeMin: String
let kCIAttributeMax: String
let kCIAttributeSliderMin: String
let kCIAttributeSliderMax: String
let kCIAttributeDefault: String
let kCIAttributeIdentity: String
let kCIAttributeName: String
let kCIAttributeDisplayName: String
@available(iOS 9.0, *)
let kCIUIParameterSet: String
@available(iOS 9.0, *)
let kCIUISetBasic: String
@available(iOS 9.0, *)
let kCIUISetIntermediate: String
@available(iOS 9.0, *)
let kCIUISetAdvanced: String
@available(iOS 9.0, *)
let kCIUISetDevelopment: String
let kCIAttributeTypeTime: String
let kCIAttributeTypeScalar: String
let kCIAttributeTypeDistance: String
let kCIAttributeTypeAngle: String
let kCIAttributeTypeBoolean: String
@available(iOS 5.0, *)
let kCIAttributeTypeInteger: String
@available(iOS 5.0, *)
let kCIAttributeTypeCount: String
let kCIAttributeTypePosition: String
let kCIAttributeTypeOffset: String
let kCIAttributeTypePosition3: String
let kCIAttributeTypeRectangle: String
@available(iOS 9.0, *)
let kCIAttributeTypeOpaqueColor: String
@available(iOS 5.0, *)
let kCIAttributeTypeColor: String
@available(iOS 9.0, *)
let kCIAttributeTypeGradient: String
@available(iOS 5.0, *)
let kCIAttributeTypeImage: String
@available(iOS 5.0, *)
let kCIAttributeTypeTransform: String
let kCICategoryDistortionEffect: String
let kCICategoryGeometryAdjustment: String
let kCICategoryCompositeOperation: String
let kCICategoryHalftoneEffect: String
let kCICategoryColorAdjustment: String
let kCICategoryColorEffect: String
let kCICategoryTransition: String
let kCICategoryTileEffect: String
let kCICategoryGenerator: String
@available(iOS 5.0, *)
let kCICategoryReduction: String
let kCICategoryGradient: String
let kCICategoryStylize: String
let kCICategorySharpen: String
let kCICategoryBlur: String
let kCICategoryVideo: String
let kCICategoryStillImage: String
let kCICategoryInterlaced: String
let kCICategoryNonSquarePixels: String
let kCICategoryHighDynamicRange: String
let kCICategoryBuiltIn: String
@available(iOS 9.0, *)
let kCICategoryFilterGenerator: String
@available(iOS 5.0, *)
let kCIOutputImageKey: String
@available(iOS 5.0, *)
let kCIInputBackgroundImageKey: String
@available(iOS 5.0, *)
let kCIInputImageKey: String
@available(iOS 7.0, *)
let kCIInputTimeKey: String
@available(iOS 7.0, *)
let kCIInputTransformKey: String
@available(iOS 7.0, *)
let kCIInputScaleKey: String
@available(iOS 7.0, *)
let kCIInputAspectRatioKey: String
@available(iOS 7.0, *)
let kCIInputCenterKey: String
@available(iOS 7.0, *)
let kCIInputRadiusKey: String
@available(iOS 7.0, *)
let kCIInputAngleKey: String
@available(iOS 9.0, *)
let kCIInputRefractionKey: String
@available(iOS 7.0, *)
let kCIInputWidthKey: String
@available(iOS 7.0, *)
let kCIInputSharpnessKey: String
@available(iOS 7.0, *)
let kCIInputIntensityKey: String
@available(iOS 7.0, *)
let kCIInputEVKey: String
@available(iOS 7.0, *)
let kCIInputSaturationKey: String
@available(iOS 7.0, *)
let kCIInputColorKey: String
@available(iOS 7.0, *)
let kCIInputBrightnessKey: String
@available(iOS 7.0, *)
let kCIInputContrastKey: String
@available(iOS 9.0, *)
let kCIInputBiasKey: String
@available(iOS 9.0, *)
let kCIInputWeightsKey: String
@available(iOS 9.0, *)
let kCIInputGradientImageKey: String
@available(iOS 7.0, *)
let kCIInputMaskImageKey: String
@available(iOS 9.0, *)
let kCIInputShadingImageKey: String
@available(iOS 7.0, *)
let kCIInputTargetImageKey: String
@available(iOS 7.0, *)
let kCIInputExtentKey: String
@available(iOS 6.0, *)
let kCIInputVersionKey: String
@available(iOS 5.0, *)
class CIFilter : Object, SecureCoding, Copying {
  @available(iOS 5.0, *)
  var outputImage: CIImage? { get }
  @available(iOS 5.0, *)
  var name: String { get }
  var inputKeys: [String] { get }
  var outputKeys: [String] { get }
  func setDefaults()
  var attributes: [String : AnyObject] { get }
  init()
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 5.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}

extension CIFilter {
  @available(iOS 8.0, OSX 10.10, *)
  convenience init?(name: String!, elements: (String, AnyObject)...)
}
extension CIFilter {
  /*not inherited*/ init?(name: String)
  @available(iOS 8.0, *)
  /*not inherited*/ init?(name: String, withInputParameters params: [String : AnyObject]?)
  class func filterNamesIn(category category: String?) -> [String]
  class func filterNamesIn(categories categories: [String]?) -> [String]
  @available(iOS 9.0, *)
  class func registerName(name: String, constructor anObject: CIFilterConstructor, classAttributes attributes: [String : AnyObject] = [:])
  @available(iOS 9.0, *)
  class func localizedNameFor(filterName filterName: String) -> String?
  @available(iOS 9.0, *)
  class func localizedNameFor(category category: String) -> String
  @available(iOS 9.0, *)
  class func localizedDescriptionFor(filterName filterName: String) -> String?
  @available(iOS 9.0, *)
  class func localizedReferenceDocumentationFor(filterName filterName: String) -> URL?
}
extension CIFilter {
  @available(iOS 6.0, *)
  class func serializedXMPFrom(filters: [CIFilter], inputImageExtent extent: CGRect) -> Data
  @available(iOS 6.0, *)
  class func filterArrayFrom(serializedXMP xmpData: Data, inputImageExtent extent: CGRect, error outError: ErrorPointer) -> [CIFilter]
}
