
enum UIBarButtonItemStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
  case bordered
  case done
}
enum UIBarButtonSystemItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case done
  case cancel
  case edit
  case save
  case add
  case flexibleSpace
  case fixedSpace
  case compose
  case reply
  case action
  case organize
  case bookmarks
  case search
  case refresh
  case stop
  case camera
  case trash
  case play
  case pause
  case rewind
  case fastForward
  @available(iOS 3.0, *)
  case undo
  @available(iOS 3.0, *)
  case redo
  @available(iOS 4.0, *)
  case pageCurl
}
@available(iOS 2.0, *)
class UIBarButtonItem : UIBarItem, Coding {
  init()
  init?(coder aDecoder: Coder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  @available(iOS 5.0, *)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(title: String?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target: AnyObject?, action: Selector)
  convenience init(customView: UIView)
  var style: UIBarButtonItemStyle
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector
  weak var target: @sil_weak AnyObject?
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  func backgroundImageFor(state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  var tintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  func setTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titlePositionAdjustmentFor(barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackButtonTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonTitlePositionAdjustmentFor(barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
}