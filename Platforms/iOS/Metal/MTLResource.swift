
@available(iOS 8.0, *)
enum MTLPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case keepCurrent
  case nonVolatile
  case volatile
  case empty
}
@available(iOS 8.0, *)
enum MTLCPUCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case defaultCache
  case writeCombined
}
@available(iOS 9.0, *)
enum MTLStorageMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case shared
  case `private`
}
var MTLResourceCPUCacheModeShift: Int32 { get }
var MTLResourceStorageModeShift: Int32 { get }
@available(iOS 8.0, *)
struct MTLResourceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var cpuCacheModeDefaultCache: MTLResourceOptions { get }
  static var cpuCacheModeWriteCombined: MTLResourceOptions { get }
  @available(iOS 9.0, *)
  static var storageModeShared: MTLResourceOptions { get }
  @available(iOS 9.0, *)
  static var storageModePrivate: MTLResourceOptions { get }
  static var optionCPUCacheModeDefault: MTLResourceOptions { get }
  static var optionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}
@available(iOS 8.0, *)
protocol MTLResource : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(iOS 9.0, *)
  var storageMode: MTLStorageMode { get }
  func setPurgeableState(state: MTLPurgeableState) -> MTLPurgeableState
}
