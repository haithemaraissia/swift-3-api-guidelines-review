
@available(OSX 10.11, *)
class NSLayoutAnchor : Object {
  func constraintEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
@available(OSX 10.11, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
@available(OSX 10.11, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
@available(OSX 10.11, *)
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualTo(constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(constant c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualTo(anchor anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualTo(anchor anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
