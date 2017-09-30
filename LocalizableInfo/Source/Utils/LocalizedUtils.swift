import Foundation

extension String {
  var localized: String { return NSLocalizedString(self, comment: self) }
 static var localized_create: String { return "create".localized }
 static var localized_login: String { return "login".localized }
 static var localized_logout: String { return "logout".localized }

}
