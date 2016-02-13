
protocol GKAgentDelegate : ObjectProtocol {
  @available(iOS 9.0, *)
  optional func agentWillUpdate(agent: GKAgent)
  @available(iOS 9.0, *)
  optional func agentDidUpdate(agent: GKAgent)
}
@available(iOS 9.0, *)
class GKAgent : GKComponent {
  weak var delegate: @sil_weak GKAgentDelegate?
  var behavior: GKBehavior?
  var mass: Float
  var radius: Float
  var speed: Float { get }
  var maxAcceleration: Float
  var maxSpeed: Float
  init()
}
@available(iOS 9.0, *)
class GKAgent2D : GKAgent {
  var position: vector_float2
  var velocity: vector_float2 { get }
  var rotation: Float
  func update(withDeltaTime seconds: TimeInterval)
  init()
}
