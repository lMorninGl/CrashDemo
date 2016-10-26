import Foundation

public class RegularExpressionSpecification: CompositeSpecification {
	public let regularExpression: NSRegularExpression
	
	public init(regularExpression: NSRegularExpression) {
		self.regularExpression = regularExpression
		super.init()
	}
	
	public convenience init(pattern: String) {
		let regularExpression = try! NSRegularExpression(pattern: pattern, options: [])
		self.init(regularExpression: regularExpression)
	}
	
	public override func isSatisfiedBy(_ candidate: Any?) -> Bool {
		guard let s = candidate as? String else { return false }
		return regularExpression.numberOfMatches(in: s, options: [], range: NSMakeRange(0, s.characters.count)) > 0
	}
}
