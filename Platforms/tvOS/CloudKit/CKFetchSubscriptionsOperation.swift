
@available(tvOS 8.0, *)
class CKFetchSubscriptionsOperation : CKDatabaseOperation {
  init()
  class func fetchAll() -> Self
  convenience init(subscriptionIDs: [String])
  var subscriptionIDs: [String]?
  var fetchSubscriptionCompletionBlock: (([String : CKSubscription]?, Error?) -> Void)?
}