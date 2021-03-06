
@available(tvOS 8.0, *)
protocol AVAudioMixing : AVAudioStereoMixing, AVAudio3DMixing {
  @available(tvOS 9.0, *)
  func destination(forMixer mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float { get set }
}
@available(tvOS 8.0, *)
protocol AVAudioStereoMixing : NSObjectProtocol {
  var pan: Float { get set }
}
@available(tvOS 8.0, *)
enum AVAudio3DMixingRenderingAlgorithm : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case equalPowerPanning
  case sphericalHead
  case HRTF
  case soundField
  case stereoPassThrough
}
protocol AVAudio3DMixing : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm { get set }
  var rate: Float { get set }
  var reverbBlend: Float { get set }
  var obstruction: Float { get set }
  var occlusion: Float { get set }
  var position: AVAudio3DPoint { get set }
}
@available(tvOS 9.0, *)
class AVAudioMixingDestination : NSObject, AVAudioMixing {
  var connectionPoint: AVAudioConnectionPoint { get }
  @available(tvOS 9.0, *)
  func destination(forMixer mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(tvOS 8.0, *)
  var volume: Float
  @available(tvOS 8.0, *)
  var pan: Float
  @available(tvOS 9.0, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(tvOS 9.0, *)
  var rate: Float
  @available(tvOS 9.0, *)
  var reverbBlend: Float
  @available(tvOS 9.0, *)
  var obstruction: Float
  @available(tvOS 9.0, *)
  var occlusion: Float
  @available(tvOS 9.0, *)
  var position: AVAudio3DPoint
}
