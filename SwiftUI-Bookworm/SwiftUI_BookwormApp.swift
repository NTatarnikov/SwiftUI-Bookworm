//
//  SwiftUI_BookwormApp.swift
//  SwiftUI-Bookworm
//
//  Created by Nikita Tatarnikov on 03.12.2021.
//

import SwiftUI

@main
struct SwiftUI_BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
