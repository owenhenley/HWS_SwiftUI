//
//  ContentView.swift
//  Project1SwiftUI
//
//  Created by Owen Henley on 12/06/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    // Save this state. do not destroy value when recreating struct
    @ObjectBinding private var dataSource = DataSource()

    var body: some View {
        NavigationView {
            List(dataSource.pictures.identified(by: \.self)) { picture in
                NavigationButton(destination: DetailView(selectedImage: picture), isDetail: true) {
                Text(picture)
                }
            }.navigationBarTitle(Text("Storm Viewer"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
