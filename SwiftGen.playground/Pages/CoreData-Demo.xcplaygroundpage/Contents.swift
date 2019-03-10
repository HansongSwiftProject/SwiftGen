//: #### Other pages
//:
//: * [Demo for `swiftgen colors`](Colors-Demo)
//: * Demo for `swiftgen coredata`
//: * [Demo for `swiftgen fonts`](Fonts-Demo)
//: * [Demo for `swiftgen ib`](InterfaceBuilder-Demo)
//: * [Demo for `swiftgen json`](JSON-Demo)
//: * [Demo for `swiftgen plist`](Plist-Demo)
//: * [Demo for `swiftgen strings`](Strings-Demo)
//: * [Demo for `swiftgen xcassets`](XCAssets-Demo)
//: * [Demo for `swiftgen yaml`](YAML-Demo)

//: #### Example of code generated by `swiftgen coredata` with "swift4" template

import CoreData
import Foundation

// MARK: - MainEntity

@objc(MainEntity)
internal class MainEntity: NSManagedObject {
  internal class func entityName() -> String {
    return "MainEntity"
  }

  internal class func entity(in managedObjectContext: NSManagedObjectContext) -> NSEntityDescription? {
    return NSEntityDescription.entity(forEntityName: entityName(), in: managedObjectContext)
  }

  @nonobjc internal class func fetchRequest() -> NSFetchRequest<MainEntity> {
    return NSFetchRequest<MainEntity>(entityName: entityName())
  }

  // swiftlint:disable implicitly_unwrapped_optional
  @NSManaged internal var attributedString: NSAttributedString?
  @NSManaged internal var binaryData: Data?
  @NSManaged internal var boolean: Bool
  @NSManaged internal var date: Date?
  @NSManaged internal var decimal: NSDecimalNumber?
  @NSManaged internal var double: Double
  @NSManaged internal var float: Float
  @NSManaged internal var int16: Int16
  @NSManaged internal var int32: Int32
  @NSManaged internal var int64: Int64
  @NSManaged internal var nonOptional: String!
  @NSManaged internal var string: String?
  @NSManaged internal var transformable: AnyObject?
  @NSManaged internal var transient: String?
  @NSManaged internal var uri: URL?
  @NSManaged internal var uuid: UUID?
  // swiftlint:enable implicitly_unwrapped_optional
}

//: #### Usage Example

let container: NSPersistentContainer = createContainer()
let context: NSManagedObjectContext = container.viewContext

let item = MainEntity(context: context)
item.date = Date()
item.boolean = true
item.string = "test"

do {
  let newObjectsCount = context.insertedObjects.count
  print("Preparing to save \(newObjectsCount)")

  try context.save()
  print("Saved")
} catch {
  fatalError("Unresolved error \(error)")
}
