import Foundation

struct SourceCodeFile: Hashable, Codable, Identifiable {
    public var id: Int
    public var name: String
    
    
    private var lastEditSecondsFromRefDate: Int
    
    
    public var lastEditDate: Date{
        Date(timeIntervalSinceReferenceDate: TimeInterval(lastEditSecondsFromRefDate))
    }
}
