//
//  DataController.swift
//  SwiftUI-Bookworm
//
//  Created by Nikita Tatarnikov on 03.12.2021.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores() { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
