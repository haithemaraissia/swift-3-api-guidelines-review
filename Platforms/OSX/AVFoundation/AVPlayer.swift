
enum AVPlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case readyToPlay
  case failed
}
@available(OSX 10.7, *)
class AVPlayer : Object {
  init(url URL: URL)
  init(playerItem item: AVPlayerItem)
  var status: AVPlayerStatus { get }
  var error: Error? { get }
  init()
}
extension AVPlayer {
  var rate: Float
  func play()
  func pause()
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }
  func replaceCurrentItem(with item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayerActionAtItemEnd
}
enum AVPlayerActionAtItemEnd : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case advance
  case pause
  case none
}
extension AVPlayer {
  func currentTime() -> CMTime
  func seek(to date: Date)
  @available(OSX 10.7, *)
  func seek(to date: Date, completionHandler: (Bool) -> Void)
  func seek(to time: CMTime)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(OSX 10.7, *)
  func seek(to time: CMTime, completionHandler: (Bool) -> Void)
  @available(OSX 10.7, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
}
extension AVPlayer {
  @available(OSX 10.8, *)
  func setRate(rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(OSX 10.8, *)
  func preroll(atRate rate: Float, completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func cancelPendingPrerolls()
  @available(OSX 10.8, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserver(forInterval interval: CMTime, queue: dispatch_queue_t?, using block: (CMTime) -> Void) -> AnyObject
  func addBoundaryTimeObserver(forTimes times: [Value], queue: dispatch_queue_t?, using block: () -> Void) -> AnyObject
  func removeTimeObserver(observer: AnyObject)
}
extension AVPlayer {
  @available(OSX 10.7, *)
  var volume: Float
  @available(OSX 10.7, *)
  var isMuted: Bool
  var isClosedCaptionDisplayEnabled: Bool
}
extension AVPlayer {
  @available(OSX 10.9, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(OSX 10.9, *)
  func setMediaSelectionCriteria(criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)
  @available(OSX 10.9, *)
  func mediaSelectionCriteria(forMediaCharacteristic mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
  @available(OSX 10.9, *)
  var audioOutputDeviceUniqueID: String?
}
extension AVPlayer {
  @available(OSX 10.11, *)
  var allowsExternalPlayback: Bool
  @available(OSX 10.11, *)
  var isExternalPlaybackActive: Bool { get }
}
@available(OSX 10.7, *)
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool
  func insertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?)
  func removeItem(item: AVPlayerItem)
  func removeAllItems()
  init(url URL: URL)
  init(playerItem item: AVPlayerItem)
  init()
}
