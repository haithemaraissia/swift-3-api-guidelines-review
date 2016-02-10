
@available(iOS 9.0, *)
class UIRegion : Object, Copying, Coding {
  class func infinite() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnionWith(region: UIRegion) -> Self
  func byDifferenceFrom(region: UIRegion) -> Self
  func byIntersectionWith(region: UIRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
