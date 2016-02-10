
var kSecUnlockStateStatus: UInt32 { get }
var kSecReadPermStatus: UInt32 { get }
var kSecWritePermStatus: UInt32 { get }
var SEC_KEYCHAIN_SETTINGS_VERS1: Int32 { get }
struct SecKeychainSettings {
  var version: UInt32
  var lockOnSleep: DarwinBoolean
  var useLockInterval: DarwinBoolean
  var lockInterval: UInt32
  init()
  init(version: UInt32, lockOnSleep: DarwinBoolean, useLockInterval: DarwinBoolean, lockInterval: UInt32)
}
enum SecAuthenticationType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case NTLM
  case MSN
  case DPA
  case RPA
  case httpBasic
  case httpDigest
  case htmlForm
  case `default`
  case any
}
enum SecProtocolType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case FTP
  case ftpAccount
  case HTTP
  case IRC
  case NNTP
  case POP3
  case SMTP
  case SOCKS
  case IMAP
  case LDAP
  case appleTalk
  case AFP
  case telnet
  case SSH
  case FTPS
  case HTTPS
  case httpProxy
  case httpsProxy
  case ftpProxy
  case CIFS
  case SMB
  case RTSP
  case rtspProxy
  case DAAP
  case EPPC
  case IPP
  case NNTPS
  case LDAPS
  case telnetS
  case IMAPS
  case IRCS
  case POP3S
  case cvSpserver
  case SVN
  case any
}
enum SecKeychainEvent : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case lockEvent
  case unlockEvent
  case addEvent
  case deleteEvent
  case updateEvent
  case passwordChangedEvent
  case defaultChangedEvent
  case dataAccessEvent
  case keychainListChangedEvent
  case trustSettingsChangedEvent
}
struct SecKeychainEventMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var lockEventMask: SecKeychainEventMask { get }
  static var unlockEventMask: SecKeychainEventMask { get }
  static var addEventMask: SecKeychainEventMask { get }
  static var deleteEventMask: SecKeychainEventMask { get }
  static var updateEventMask: SecKeychainEventMask { get }
  static var passwordChangedEventMask: SecKeychainEventMask { get }
  static var defaultChangedEventMask: SecKeychainEventMask { get }
  static var dataAccessEventMask: SecKeychainEventMask { get }
  static var keychainListChangedMask: SecKeychainEventMask { get }
  static var trustSettingsChangedEventMask: SecKeychainEventMask { get }
  static var everyEventMask: SecKeychainEventMask { get }
}
struct SecKeychainCallbackInfo {
  var version: UInt32
  var item: Unmanaged<SecKeychainItem>
  var keychain: Unmanaged<SecKeychain>
  var pid: pid_t
}
func SecKeychainGetTypeID() -> CFTypeID
func SecKeychainGetVersion(returnVers: UnsafeMutablePointer<UInt32>) -> OSStatus
func SecKeychainOpen(pathName: UnsafePointer<Int8>, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainCreate(pathName: UnsafePointer<Int8>, _ passwordLength: UInt32, _ password: UnsafePointer<Void>, _ promptUser: Bool, _ initialAccess: SecAccess?, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainDelete(keychainOrArray: SecKeychain?) -> OSStatus
func SecKeychainSetSettings(keychain: SecKeychain?, _ newSettings: UnsafePointer<SecKeychainSettings>) -> OSStatus
func SecKeychainCopySettings(keychain: SecKeychain?, _ outSettings: UnsafeMutablePointer<SecKeychainSettings>) -> OSStatus
func SecKeychainUnlock(keychain: SecKeychain?, _ passwordLength: UInt32, _ password: UnsafePointer<Void>, _ usePassword: Bool) -> OSStatus
func SecKeychainLock(keychain: SecKeychain?) -> OSStatus
func SecKeychainLockAll() -> OSStatus
func SecKeychainCopyDefault(keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDefault(keychain: SecKeychain?) -> OSStatus
func SecKeychainCopySearchList(searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetSearchList(searchList: CFArray) -> OSStatus
enum SecPreferencesDomain : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case user
  case system
  case common
  case dynamic
}
func SecKeychainCopyDomainDefault(domain: SecPreferencesDomain, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDomainDefault(domain: SecPreferencesDomain, _ keychain: SecKeychain?) -> OSStatus
func SecKeychainCopyDomainSearchList(domain: SecPreferencesDomain, _ searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetDomainSearchList(domain: SecPreferencesDomain, _ searchList: CFArray) -> OSStatus
func SecKeychainSetPreferenceDomain(domain: SecPreferencesDomain) -> OSStatus
func SecKeychainGetPreferenceDomain(domain: UnsafeMutablePointer<SecPreferencesDomain>) -> OSStatus
func SecKeychainGetStatus(keychain: SecKeychain?, _ keychainStatus: UnsafeMutablePointer<SecKeychainStatus>) -> OSStatus
func SecKeychainGetPath(keychain: SecKeychain?, _ ioPathLength: UnsafeMutablePointer<UInt32>, _ pathName: UnsafeMutablePointer<Int8>) -> OSStatus
func SecKeychainAttributeInfoForItemID(keychain: SecKeychain?, _ itemID: UInt32, _ info: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeInfo>>) -> OSStatus
func SecKeychainFreeAttributeInfo(info: UnsafeMutablePointer<SecKeychainAttributeInfo>) -> OSStatus
typealias SecKeychainCallback = @convention(c) (SecKeychainEvent, UnsafeMutablePointer<SecKeychainCallbackInfo>, UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainAddCallback(callbackFunction: SecKeychainCallback, _ eventMask: SecKeychainEventMask, _ userContext: UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainRemoveCallback(callbackFunction: SecKeychainCallback) -> OSStatus
func SecKeychainAddInternetPassword(keychain: SecKeychain?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<Int8>, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ pathLength: UInt32, _ path: UnsafePointer<Int8>, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UInt32, _ passwordData: UnsafePointer<Void>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainFindInternetPassword(keychainOrArray: CFTypeRef?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<Int8>, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ pathLength: UInt32, _ path: UnsafePointer<Int8>, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UnsafeMutablePointer<UInt32>, _ passwordData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainAddGenericPassword(keychain: SecKeychain?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ passwordLength: UInt32, _ passwordData: UnsafePointer<Void>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainFindGenericPassword(keychainOrArray: CFTypeRef?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ passwordLength: UnsafeMutablePointer<UInt32>, _ passwordData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainSetUserInteractionAllowed(state: Bool) -> OSStatus
func SecKeychainGetUserInteractionAllowed(state: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func SecKeychainCopyAccess(keychain: SecKeychain?, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus
func SecKeychainSetAccess(keychain: SecKeychain?, _ access: SecAccess) -> OSStatus
