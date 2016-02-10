
@available(OSX 10.10, *)
class AVAudioIONode : AVAudioNode {
  var presentationLatency: TimeInterval { get }
  var audioUnit: AudioUnit { get }
  init()
}
@available(OSX 10.10, *)
class AVAudioInputNode : AVAudioIONode, AVAudioMixing {
  init()
  @available(OSX 10.11, *)
  func destinationFor(mixer mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(OSX 10.10, *)
  var volume: Float
  @available(OSX 10.10, *)
  var pan: Float
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(OSX 10.10, *)
  var rate: Float
  @available(OSX 10.10, *)
  var reverbBlend: Float
  @available(OSX 10.10, *)
  var obstruction: Float
  @available(OSX 10.10, *)
  var occlusion: Float
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}
@available(OSX 10.10, *)
class AVAudioOutputNode : AVAudioIONode {
  init()
}
