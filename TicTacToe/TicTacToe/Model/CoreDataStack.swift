import CoreData

class CoreDataStack: ObservableObject {
    static let shared = CoreDataStack()
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "dataModel")
        
        container.loadPersistentStores { _, error in
            if let error {
                
                fatalError("Failed to load persistent stores: \(error.localizedDescription)")
            }
        }
        return container
    }()
    
    private init() { }
}
