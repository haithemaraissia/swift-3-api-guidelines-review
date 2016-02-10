
typealias AudioQueuePropertyID = UInt32
typealias AudioQueueParameterID = UInt32
typealias AudioQueueParameterValue = Float32
typealias AudioQueueRef = COpaquePointer
typealias AudioQueueTimelineRef = COpaquePointer
var kAudioQueueErr_InvalidBuffer: OSStatus { get }
var kAudioQueueErr_BufferEmpty: OSStatus { get }
var kAudioQueueErr_DisposalPending: OSStatus { get }
var kAudioQueueErr_InvalidProperty: OSStatus { get }
var kAudioQueueErr_InvalidPropertySize: OSStatus { get }
var kAudioQueueErr_InvalidParameter: OSStatus { get }
var kAudioQueueErr_CannotStart: OSStatus { get }
var kAudioQueueErr_InvalidDevice: OSStatus { get }
var kAudioQueueErr_BufferInQueue: OSStatus { get }
var kAudioQueueErr_InvalidRunState: OSStatus { get }
var kAudioQueueErr_InvalidQueueType: OSStatus { get }
var kAudioQueueErr_Permissions: OSStatus { get }
var kAudioQueueErr_InvalidPropertyValue: OSStatus { get }
var kAudioQueueErr_PrimeTimedOut: OSStatus { get }
var kAudioQueueErr_CodecNotFound: OSStatus { get }
var kAudioQueueErr_InvalidCodecAccess: OSStatus { get }
var kAudioQueueErr_QueueInvalidated: OSStatus { get }
var kAudioQueueErr_TooManyTaps: OSStatus { get }
var kAudioQueueErr_InvalidTapContext: OSStatus { get }
var kAudioQueueErr_RecordUnderrun: OSStatus { get }
var kAudioQueueErr_InvalidTapType: OSStatus { get }
var kAudioQueueErr_BufferEnqueuedTwice: OSStatus { get }
var kAudioQueueErr_EnqueueDuringReset: OSStatus { get }
var kAudioQueueErr_InvalidOfflineMode: OSStatus { get }
var kAudioQueueProperty_IsRunning: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_SampleRate: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_NumberChannels: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentDevice: AudioQueuePropertyID { get }
var kAudioQueueProperty_MagicCookie: AudioQueuePropertyID { get }
var kAudioQueueProperty_MaximumOutputPacketSize: AudioQueuePropertyID { get }
var kAudioQueueProperty_StreamDescription: AudioQueuePropertyID { get }
var kAudioQueueProperty_ChannelLayout: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableLevelMetering: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeter: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeterDB: AudioQueuePropertyID { get }
var kAudioQueueProperty_DecodeBufferSizeFrames: AudioQueuePropertyID { get }
var kAudioQueueProperty_ConverterError: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableTimePitch: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchAlgorithm: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchBypass: AudioQueuePropertyID { get }
var kAudioQueueTimePitchAlgorithm_Spectral: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_TimeDomain: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_Varispeed: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_LowQualityZeroLatency: UInt32 { get }
var kAudioQueueProperty_HardwareCodecPolicy: AudioQueuePropertyID { get }
var kAudioQueueHardwareCodecPolicy_Default: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_UseSoftwareOnly: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_UseHardwareOnly: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_PreferSoftware: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_PreferHardware: UInt32 { get }
var kAudioQueueProperty_ChannelAssignments: AudioQueuePropertyID { get }
var kAudioQueueParam_Volume: AudioQueueParameterID { get }
var kAudioQueueParam_PlayRate: AudioQueueParameterID { get }
var kAudioQueueParam_Pitch: AudioQueueParameterID { get }
var kAudioQueueParam_VolumeRampTime: AudioQueueParameterID { get }
var kAudioQueueParam_Pan: AudioQueueParameterID { get }
struct AudioQueueProcessingTapFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var preEffects: AudioQueueProcessingTapFlags { get }
  static var postEffects: AudioQueueProcessingTapFlags { get }
  static var siphon: AudioQueueProcessingTapFlags { get }
  static var startOfStream: AudioQueueProcessingTapFlags { get }
  static var endOfStream: AudioQueueProcessingTapFlags { get }
}
struct AudioQueueBuffer {
  var mAudioDataBytesCapacity: UInt32
  var mAudioData: UnsafeMutablePointer<Void>
  var mAudioDataByteSize: UInt32
  var mUserData: UnsafeMutablePointer<Void>
  var mPacketDescriptionCapacity: UInt32
  var mPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>
  var mPacketDescriptionCount: UInt32
}
typealias AudioQueueBufferRef = UnsafeMutablePointer<AudioQueueBuffer>
struct AudioQueueParameterEvent {
  var mID: AudioQueueParameterID
  var mValue: AudioQueueParameterValue
  init()
  init(mID: AudioQueueParameterID, mValue: AudioQueueParameterValue)
}
struct AudioQueueLevelMeterState {
  var mAveragePower: Float32
  var mPeakPower: Float32
  init()
  init(mAveragePower: Float32, mPeakPower: Float32)
}
typealias AudioQueueProcessingTapRef = COpaquePointer
struct AudioQueueChannelAssignment {
  var mDeviceUID: Unmanaged<CFString>
  var mChannelNumber: UInt32
}
typealias AudioQueueOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueueBufferRef) -> Void
typealias AudioQueueInputCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueueBufferRef, UnsafePointer<AudioTimeStamp>, UInt32, UnsafePointer<AudioStreamPacketDescription>) -> Void
typealias AudioQueuePropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueuePropertyID) -> Void
typealias AudioQueueProcessingTapCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueProcessingTapRef, UInt32, UnsafeMutablePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioQueueProcessingTapFlags>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioBufferList>) -> Void
@available(iOS 2.0, *)
func AudioQueueNewOutput(inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueOutputCallback, _ inUserData: UnsafeMutablePointer<Void>, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueNewInput(inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueInputCallback, _ inUserData: UnsafeMutablePointer<Void>, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDispose(inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueAllocateBuffer(inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueAllocateBufferWithPacketDescriptions(inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ inNumberPacketDescriptions: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueFreeBuffer(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueEnqueueBuffer(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueEnqueueBufferWithParameters(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>, _ inTrimFramesAtStart: UInt32, _ inTrimFramesAtEnd: UInt32, _ inNumParamValues: UInt32, _ inParamValues: UnsafePointer<AudioQueueParameterEvent>, _ inStartTime: UnsafePointer<AudioTimeStamp>, _ outActualStartTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueStart(inAQ: AudioQueueRef, _ inStartTime: UnsafePointer<AudioTimeStamp>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueuePrime(inAQ: AudioQueueRef, _ inNumberOfFramesToPrepare: UInt32, _ outNumberOfFramesPrepared: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueStop(inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus
@available(iOS 2.0, *)
func AudioQueuePause(inAQ: AudioQueueRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueFlush(inAQ: AudioQueueRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueReset(inAQ: AudioQueueRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetParameter(inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ outValue: UnsafeMutablePointer<AudioQueueParameterValue>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueSetParameter(inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ inValue: AudioQueueParameterValue) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetProperty(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outData: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueSetProperty(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inData: UnsafePointer<Void>, _ inDataSize: UInt32) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetPropertySize(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueAddPropertyListener(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueRemovePropertyListener(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueCreateTimeline(inAQ: AudioQueueRef, _ outTimeline: UnsafeMutablePointer<AudioQueueTimelineRef>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDisposeTimeline(inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetCurrentTime(inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outTimelineDiscontinuity: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDeviceGetCurrentTime(inAQ: AudioQueueRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDeviceTranslateTime(inAQ: AudioQueueRef, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDeviceGetNearestStartTime(inAQ: AudioQueueRef, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueSetOfflineRenderFormat(inAQ: AudioQueueRef, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inLayout: UnsafePointer<AudioChannelLayout>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueOfflineRender(inAQ: AudioQueueRef, _ inTimestamp: UnsafePointer<AudioTimeStamp>, _ ioBuffer: AudioQueueBufferRef, _ inNumberFrames: UInt32) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapNew(inAQ: AudioQueueRef, _ inCallback: AudioQueueProcessingTapCallback, _ inClientData: UnsafeMutablePointer<Void>, _ inFlags: AudioQueueProcessingTapFlags, _ outMaxFrames: UnsafeMutablePointer<UInt32>, _ outProcessingFormat: UnsafeMutablePointer<AudioStreamBasicDescription>, _ outAQTap: UnsafeMutablePointer<AudioQueueProcessingTapRef>) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapDispose(inAQTap: AudioQueueProcessingTapRef) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapGetSourceAudio(inAQTap: AudioQueueProcessingTapRef, _ inNumberFrames: UInt32, _ ioTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outFlags: UnsafeMutablePointer<AudioQueueProcessingTapFlags>, _ outNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapGetQueueTime(inAQTap: AudioQueueProcessingTapRef, _ outQueueSampleTime: UnsafeMutablePointer<Float64>, _ outQueueFrameCount: UnsafeMutablePointer<UInt32>) -> OSStatus
