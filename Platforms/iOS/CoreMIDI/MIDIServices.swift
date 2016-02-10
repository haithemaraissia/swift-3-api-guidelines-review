
var kMIDIInvalidClient: OSStatus { get }
var kMIDIInvalidPort: OSStatus { get }
var kMIDIWrongEndpointType: OSStatus { get }
var kMIDINoConnection: OSStatus { get }
var kMIDIUnknownEndpoint: OSStatus { get }
var kMIDIUnknownProperty: OSStatus { get }
var kMIDIWrongPropertyType: OSStatus { get }
var kMIDINoCurrentSetup: OSStatus { get }
var kMIDIMessageSendErr: OSStatus { get }
var kMIDIServerStartErr: OSStatus { get }
var kMIDISetupFormatErr: OSStatus { get }
var kMIDIWrongThread: OSStatus { get }
var kMIDIObjectNotFound: OSStatus { get }
var kMIDIIDNotUnique: OSStatus { get }
var kMIDINotPermitted: OSStatus { get }
typealias MIDIObjectRef = UInt32
typealias MIDIClientRef = MIDIObjectRef
typealias MIDIPortRef = MIDIObjectRef
typealias MIDIDeviceRef = MIDIObjectRef
typealias MIDIEntityRef = MIDIObjectRef
typealias MIDIEndpointRef = MIDIObjectRef
typealias MIDITimeStamp = UInt64
enum MIDIObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case other
  case device
  case entity
  case source
  case destination
  case externalDevice
  case externalEntity
  case externalSource
  case externalDestination
}
let kMIDIObjectType_ExternalMask: MIDIObjectType
typealias MIDIUniqueID = Int32
var kMIDIInvalidUniqueID: MIDIUniqueID { get }
typealias MIDINotifyProc = @convention(c) (UnsafePointer<MIDINotification>, UnsafeMutablePointer<Void>) -> Void
typealias MIDINotifyBlock = (UnsafePointer<MIDINotification>) -> Void
typealias MIDIReadProc = @convention(c) (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias MIDIReadBlock = (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>) -> Void
typealias MIDICompletionProc = @convention(c) (UnsafeMutablePointer<MIDISysexSendRequest>) -> Void
struct MIDIPacket {
  var timeStamp: MIDITimeStamp
  var length: UInt16
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: MIDITimeStamp, length: UInt16, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct MIDIPacketList {
  var numPackets: UInt32
  var packet: (MIDIPacket)
  init()
  init(numPackets: UInt32, packet: (MIDIPacket))
}
struct MIDISysexSendRequest {
  var destination: MIDIEndpointRef
  var data: UnsafePointer<UInt8>
  var bytesToSend: UInt32
  var complete: DarwinBoolean
  var reserved: (UInt8, UInt8, UInt8)
  var completionProc: MIDICompletionProc
  var completionRefCon: UnsafeMutablePointer<Void>
}
enum MIDINotificationMessageID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case msgSetupChanged
  case msgObjectAdded
  case msgObjectRemoved
  case msgPropertyChanged
  case msgThruConnectionsChanged
  case msgSerialPortOwnerChanged
  case msgIOError
}
struct MIDINotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32)
}
struct MIDIObjectAddRemoveNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var parent: MIDIObjectRef
  var parentType: MIDIObjectType
  var child: MIDIObjectRef
  var childType: MIDIObjectType
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, parent: MIDIObjectRef, parentType: MIDIObjectType, child: MIDIObjectRef, childType: MIDIObjectType)
}
struct MIDIObjectPropertyChangeNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var object: MIDIObjectRef
  var objectType: MIDIObjectType
  var propertyName: Unmanaged<CFString>
}
struct MIDIIOErrorNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var driverDevice: MIDIDeviceRef
  var errorCode: OSStatus
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, driverDevice: MIDIDeviceRef, errorCode: OSStatus)
}
@available(iOS 4.2, *)
let kMIDIPropertyName: CFString
@available(iOS 4.2, *)
let kMIDIPropertyManufacturer: CFString
@available(iOS 4.2, *)
let kMIDIPropertyModel: CFString
@available(iOS 4.2, *)
let kMIDIPropertyUniqueID: CFString
@available(iOS 4.2, *)
let kMIDIPropertyDeviceID: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceiveChannels: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitChannels: CFString
@available(iOS 4.2, *)
let kMIDIPropertyMaxSysExSpeed: CFString
@available(iOS 4.2, *)
let kMIDIPropertyAdvanceScheduleTimeMuSec: CFString
@available(iOS 4.2, *)
let kMIDIPropertyIsEmbeddedEntity: CFString
@available(iOS 4.2, *)
let kMIDIPropertyIsBroadcast: CFString
@available(iOS 4.2, *)
let kMIDIPropertySingleRealtimeEntity: CFString
@available(iOS 4.2, *)
let kMIDIPropertyConnectionUniqueID: CFString
@available(iOS 4.2, *)
let kMIDIPropertyOffline: CFString
@available(iOS 4.2, *)
let kMIDIPropertyPrivate: CFString
@available(iOS 4.2, *)
let kMIDIPropertyDriverOwner: CFString
@available(iOS 4.2, *)
let kMIDIPropertyNameConfiguration: CFString
@available(iOS 4.2, *)
let kMIDIPropertyImage: CFString
@available(iOS 4.2, *)
let kMIDIPropertyDriverVersion: CFString
@available(iOS 4.2, *)
let kMIDIPropertySupportsGeneralMIDI: CFString
@available(iOS 4.2, *)
let kMIDIPropertySupportsMMC: CFString
@available(iOS 4.2, *)
let kMIDIPropertyCanRoute: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceivesClock: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceivesMTC: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceivesNotes: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceivesProgramChanges: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceivesBankSelectMSB: CFString
@available(iOS 4.2, *)
let kMIDIPropertyReceivesBankSelectLSB: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsClock: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsMTC: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsNotes: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsProgramChanges: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsBankSelectMSB: CFString
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsBankSelectLSB: CFString
@available(iOS 4.2, *)
let kMIDIPropertyPanDisruptsStereo: CFString
@available(iOS 4.2, *)
let kMIDIPropertyIsSampler: CFString
@available(iOS 4.2, *)
let kMIDIPropertyIsDrumMachine: CFString
@available(iOS 4.2, *)
let kMIDIPropertyIsMixer: CFString
@available(iOS 4.2, *)
let kMIDIPropertyIsEffectUnit: CFString
@available(iOS 4.2, *)
let kMIDIPropertyMaxReceiveChannels: CFString
@available(iOS 4.2, *)
let kMIDIPropertyMaxTransmitChannels: CFString
@available(iOS 4.2, *)
let kMIDIPropertyDriverDeviceEditorApp: CFString
@available(iOS 4.2, *)
let kMIDIPropertySupportsShowControl: CFString
@available(iOS 4.2, *)
let kMIDIPropertyDisplayName: CFString
@available(iOS 4.2, *)
func MIDIClientCreate(name: CFString, _ notifyProc: MIDINotifyProc?, _ notifyRefCon: UnsafeMutablePointer<Void>, _ outClient: UnsafeMutablePointer<MIDIClientRef>) -> OSStatus
@available(iOS 9.0, *)
func MIDIClientCreateWithBlock(name: CFString, _ outClient: UnsafeMutablePointer<MIDIClientRef>, _ notifyBlock: MIDINotifyBlock?) -> OSStatus
@available(iOS 4.2, *)
func MIDIClientDispose(client: MIDIClientRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIInputPortCreate(client: MIDIClientRef, _ portName: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
@available(iOS 9.0, *)
func MIDIInputPortCreateWithBlock(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>, _ readBlock: MIDIReadBlock) -> OSStatus
@available(iOS 4.2, *)
func MIDIOutputPortCreate(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
@available(iOS 4.2, *)
func MIDIPortDispose(port: MIDIPortRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIPortConnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef, _ connRefCon: UnsafeMutablePointer<Void>) -> OSStatus
@available(iOS 4.2, *)
func MIDIPortDisconnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIGetNumberOfDevices() -> Int
@available(iOS 4.2, *)
func MIDIGetDevice(deviceIndex0: Int) -> MIDIDeviceRef
@available(iOS 4.2, *)
func MIDIDeviceGetNumberOfEntities(device: MIDIDeviceRef) -> Int
@available(iOS 4.2, *)
func MIDIDeviceGetEntity(device: MIDIDeviceRef, _ entityIndex0: Int) -> MIDIEntityRef
@available(iOS 4.2, *)
func MIDIEntityGetNumberOfSources(entity: MIDIEntityRef) -> Int
@available(iOS 4.2, *)
func MIDIEntityGetSource(entity: MIDIEntityRef, _ sourceIndex0: Int) -> MIDIEndpointRef
@available(iOS 4.2, *)
func MIDIEntityGetNumberOfDestinations(entity: MIDIEntityRef) -> Int
@available(iOS 4.2, *)
func MIDIEntityGetDestination(entity: MIDIEntityRef, _ destIndex0: Int) -> MIDIEndpointRef
@available(iOS 4.2, *)
func MIDIEntityGetDevice(inEntity: MIDIEntityRef, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
@available(iOS 4.2, *)
func MIDIGetNumberOfSources() -> Int
@available(iOS 4.2, *)
func MIDIGetSource(sourceIndex0: Int) -> MIDIEndpointRef
@available(iOS 4.2, *)
func MIDIGetNumberOfDestinations() -> Int
@available(iOS 4.2, *)
func MIDIGetDestination(destIndex0: Int) -> MIDIEndpointRef
@available(iOS 4.2, *)
func MIDIEndpointGetEntity(inEndpoint: MIDIEndpointRef, _ outEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(iOS 4.2, *)
func MIDIDestinationCreate(client: MIDIClientRef, _ name: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(iOS 9.0, *)
func MIDIDestinationCreateWithBlock(client: MIDIClientRef, _ name: CFString, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>, _ readBlock: MIDIReadBlock) -> OSStatus
@available(iOS 4.2, *)
func MIDISourceCreate(client: MIDIClientRef, _ name: CFString, _ outSrc: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(iOS 4.2, *)
func MIDIEndpointDispose(endpt: MIDIEndpointRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIGetNumberOfExternalDevices() -> Int
@available(iOS 4.2, *)
func MIDIGetExternalDevice(deviceIndex0: Int) -> MIDIDeviceRef
@available(iOS 4.2, *)
func MIDIObjectGetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outValue: UnsafeMutablePointer<Int32>) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectSetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ value: Int32) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectGetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectSetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: CFString) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectGetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectSetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ data: CFData) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectGetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectSetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ dict: CFDictionary) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectGetProperties(obj: MIDIObjectRef, _ outProperties: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ deep: Bool) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectRemoveProperty(obj: MIDIObjectRef, _ propertyID: CFString) -> OSStatus
@available(iOS 4.2, *)
func MIDIObjectFindByUniqueID(inUniqueID: MIDIUniqueID, _ outObject: UnsafeMutablePointer<MIDIObjectRef>, _ outObjectType: UnsafeMutablePointer<MIDIObjectType>) -> OSStatus
@available(iOS 4.2, *)
func MIDISend(port: MIDIPortRef, _ dest: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
@available(iOS 4.2, *)
func MIDISendSysex(request: UnsafeMutablePointer<MIDISysexSendRequest>) -> OSStatus
@available(iOS 4.2, *)
func MIDIReceived(src: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
@available(iOS 4.2, *)
func MIDIFlushOutput(dest: MIDIEndpointRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIRestart() -> OSStatus
func MIDIPacketNext(pkt: UnsafePointer<MIDIPacket>) -> UnsafeMutablePointer<MIDIPacket>
@available(iOS 4.2, *)
func MIDIPacketListInit(pktlist: UnsafeMutablePointer<MIDIPacketList>) -> UnsafeMutablePointer<MIDIPacket>
@available(iOS 4.2, *)
func MIDIPacketListAdd(pktlist: UnsafeMutablePointer<MIDIPacketList>, _ listSize: Int, _ curPacket: UnsafeMutablePointer<MIDIPacket>, _ time: MIDITimeStamp, _ nData: Int, _ data: UnsafePointer<UInt8>) -> UnsafeMutablePointer<MIDIPacket>
