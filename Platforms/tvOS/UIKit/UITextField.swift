
enum UITextBorderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case line
  case bezel
  case roundedRect
}
enum UITextFieldViewMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case never
  case whileEditing
  case unlessEditing
  case always
}
@available(tvOS 2.0, *)
class UITextField : UIControl, UITextInput, Coding {
  var text: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: AttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  @available(tvOS 7.0, *)
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedPlaceholder: AttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var isEditing: Bool { get }
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  var typingAttributes: [String : AnyObject]?
  var clearButtonMode: UITextFieldViewMode
  var leftView: UIView?
  var leftViewMode: UITextFieldViewMode
  var rightView: UIView?
  var rightViewMode: UITextFieldViewMode
  func borderRectFor(bounds bounds: CGRect) -> CGRect
  func textRectFor(bounds bounds: CGRect) -> CGRect
  func placeholderRectFor(bounds bounds: CGRect) -> CGRect
  func editingRectFor(bounds bounds: CGRect) -> CGRect
  func clearButtonRectFor(bounds bounds: CGRect) -> CGRect
  func leftViewRectFor(bounds bounds: CGRect) -> CGRect
  func rightViewRectFor(bounds bounds: CGRect) -> CGRect
  func drawTextIn(rect: CGRect)
  func drawPlaceholderIn(rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(tvOS 3.2, *)
  func textIn(range: UITextRange) -> String?
  @available(tvOS 3.2, *)
  func replace(range: UITextRange, withText text: String)
  @available(tvOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(tvOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(tvOS 2.0, *)
  var markedTextStyle: [Object : AnyObject]?
  @available(tvOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(tvOS 2.0, *)
  func unmarkText()
  @available(tvOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(tvOS 3.2, *)
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func compare(position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  @available(tvOS 3.2, *)
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(tvOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(tvOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(tvOS 3.2, *)
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(tvOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(tvOS 3.2, *)
  func firstRectFor(range: UITextRange) -> CGRect
  @available(tvOS 3.2, *)
  func caretRectFor(position: UITextPosition) -> CGRect
  @available(tvOS 6.0, *)
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  @available(tvOS 3.2, *)
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  @available(tvOS 3.2, *)
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeAt(point: CGPoint) -> UITextRange?
  @available(tvOS 6.0, *)
  func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  @available(tvOS 3.2, *)
  func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(tvOS 3.2, *)
  func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  @available(tvOS 2.0, *)
  var textInputView: UIView { get }
  @available(tvOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(tvOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(tvOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(tvOS 2.0, *)
  func dictationRecognitionFailed()
  @available(tvOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(tvOS 2.0, *)
  func frameFor(dictationResultPlaceholder placeholder: AnyObject) -> CGRect
  @available(tvOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(tvOS 9.0, *)
  func beginFloatingCursorAt(point: CGPoint)
  @available(tvOS 9.0, *)
  func updateFloatingCursorAt(point: CGPoint)
  @available(tvOS 9.0, *)
  func endFloatingCursor()
  @available(tvOS 2.0, *)
  func hasText() -> Bool
  @available(tvOS 2.0, *)
  func insertText(text: String)
  @available(tvOS 2.0, *)
  func deleteBackward()
  @available(tvOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(tvOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(tvOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(tvOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(tvOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(tvOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(tvOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(tvOS 2.0, *)
  var isSecureTextEntry: Bool
}
extension UIView {
  func endEditing(force: Bool) -> Bool
}
protocol UITextFieldDelegate : ObjectProtocol {
  @available(tvOS 2.0, *)
  optional func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidBeginEditing(textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textFieldShouldEndEditing(textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidEndEditing(textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textField(textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldClear(textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldReturn(textField: UITextField) -> Bool
}
let UITextFieldTextDidBeginEditingNotification: String
let UITextFieldTextDidEndEditingNotification: String
let UITextFieldTextDidChangeNotification: String
