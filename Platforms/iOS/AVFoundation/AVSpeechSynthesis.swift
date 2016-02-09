
@available(iOS 7.0, *)
enum AVSpeechBoundary : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case word
}
@available(iOS 9.0, *)
enum AVSpeechSynthesisVoiceQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case enhanced
}
@available(iOS 7.0, *)
let AVSpeechUtteranceMinimumSpeechRate: Float
@available(iOS 7.0, *)
let AVSpeechUtteranceMaximumSpeechRate: Float
@available(iOS 7.0, *)
let AVSpeechUtteranceDefaultSpeechRate: Float
@available(iOS 9.0, *)
let AVSpeechSynthesisVoiceIdentifierAlex: String
@available(iOS 7.0, *)
class AVSpeechSynthesisVoice : Object, SecureCoding {
  class func speechVoices() -> [AVSpeechSynthesisVoice]
  class func currentLanguageCode() -> String
  /*not inherited*/ init?(language languageCode: String?)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(identifier: String)
  var language: String { get }
  @available(iOS 9.0, *)
  var identifier: String { get }
  @available(iOS 9.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  var quality: AVSpeechSynthesisVoiceQuality { get }
  init()
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 7.0, *)
class AVSpeechUtterance : Object, Copying, SecureCoding {
  init(string: String)
  var voice: AVSpeechSynthesisVoice?
  var speechString: String { get }
  var rate: Float
  var pitchMultiplier: Float
  var volume: Float
  var preUtteranceDelay: TimeInterval
  var postUtteranceDelay: TimeInterval
  init()
  @available(iOS 7.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 7.0, *)
class AVSpeechSynthesizer : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AVSpeechSynthesizerDelegate?
  var isSpeaking: Bool { get }
  var isPaused: Bool { get }
  func speak(utterance: AVSpeechUtterance)
  func stopSpeakingAt(boundary: AVSpeechBoundary) -> Bool
  func pauseSpeakingAt(boundary: AVSpeechBoundary) -> Bool
  func continueSpeaking() -> Bool
  init()
}
protocol AVSpeechSynthesizerDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance)
}