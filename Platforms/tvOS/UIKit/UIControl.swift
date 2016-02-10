
struct UIControlEvents : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var touchDown: UIControlEvents { get }
  static var touchDownRepeat: UIControlEvents { get }
  static var touchDragInside: UIControlEvents { get }
  static var touchDragOutside: UIControlEvents { get }
  static var touchDragEnter: UIControlEvents { get }
  static var touchDragExit: UIControlEvents { get }
  static var touchUpInside: UIControlEvents { get }
  static var touchUpOutside: UIControlEvents { get }
  static var touchCancel: UIControlEvents { get }
  static var valueChanged: UIControlEvents { get }
  @available(tvOS 9.0, *)
  static var primaryActionTriggered: UIControlEvents { get }
  static var editingDidBegin: UIControlEvents { get }
  static var editingChanged: UIControlEvents { get }
  static var editingDidEnd: UIControlEvents { get }
  static var editingDidEndOnExit: UIControlEvents { get }
  static var allTouchEvents: UIControlEvents { get }
  static var allEditingEvents: UIControlEvents { get }
  static var applicationReserved: UIControlEvents { get }
  static var systemReserved: UIControlEvents { get }
  static var allEvents: UIControlEvents { get }
}
enum UIControlContentVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case center
  case top
  case bottom
  case fill
}
enum UIControlContentHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case center
  case left
  case right
  case fill
}
struct UIControlState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var normal: UIControlState { get }
  static var highlighted: UIControlState { get }
  static var disabled: UIControlState { get }
  static var selected: UIControlState { get }
  @available(tvOS 9.0, *)
  static var focused: UIControlState { get }
  static var application: UIControlState { get }
  static var reserved: UIControlState { get }
}
@available(tvOS 2.0, *)
class UIControl : UIView {
  var isEnabled: Bool
  var isSelected: Bool
  var isHighlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var isTracking: Bool { get }
  var isTouchInside: Bool { get }
  func beginTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWith(touch: UITouch?, withEvent event: UIEvent?)
  func cancelTracking(event: UIEvent?)
  func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<Object>
  func allControlEvents() -> UIControlEvents
  func actionsFor(target target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsFor(controlEvents: UIControlEvents)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
