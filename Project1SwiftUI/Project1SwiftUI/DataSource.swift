//
//  DataSource.swift
//  Project1SwiftUI
//
//  Created by Owen Henley on 12/06/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import SwiftUI
import Combine

class DataSource: BindableObject {
    let didChange = PassthroughSubject<Void, Never>()

    var pictures = [String]()

    init() {
        let fm = FileManager.default
        if let path = Bundle.main.resourcePath, let items = try? fm.contentsOfDirectory(atPath: path) {
            for item in items {
                if item.hasPrefix("nssl") {
                    pictures.append(item)
                }
            }
        }

        didChange.send(())
    }
}
