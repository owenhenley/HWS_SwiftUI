//
//  DetailView.swift
//  Project1SwiftUI
//
//  Created by Owen Henley on 12/06/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    // this will change. please control it
    @State private var hidesNavigationBar = false
    var selectedImage: String

    var body: some View {
        let img = UIImage(named: selectedImage)!
        return Image(uiImage: img)
            .resizable()
            .aspectRatio(1024 / 768, contentMode: .fit)
            .navigationBarTitle(Text(selectedImage), displayMode: .inline)
            .navigationBarHidden(hidesNavigationBar)
            .tapAction {
                self.hidesNavigationBar.toggle()
        }
    }
}
