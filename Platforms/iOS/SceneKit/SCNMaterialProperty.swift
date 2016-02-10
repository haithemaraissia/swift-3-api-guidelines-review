
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case none
  @available(iOS 8.0, *)
  case nearest
  @available(iOS 8.0, *)
  case linear
}
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case clamp
  @available(iOS 8.0, *)
  case `repeat`
  @available(iOS 9.0, *)
  case clampToBorder
  @available(iOS 8.0, *)
  case mirror
}
@available(iOS 8.0, *)
class SCNMaterialProperty : Object, SCNAnimatable, SecureCoding {
  @available(iOS 8.0, *)
  convenience init(contents: AnyObject)
  var contents: AnyObject?
  @available(iOS 8.0, *)
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var borderColor: AnyObject?
  var mappingChannel: Int
  @available(iOS 8.0, *)
  var maxAnisotropy: CGFloat
  init()
  @available(iOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
