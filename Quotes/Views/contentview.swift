//
//  contentview.swift
//  Quotes
//
//  Created by Zangah Malik on 8/17/21.
//

import SwiftUI

struct contentview: View {
    
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        ScrollView {
            
            VStack {
                ForEach(model.authors) { a in
                    card(author: a)
                }
                
                
            }
            
        }
    }
}

struct contentview_Previews: PreviewProvider {
    static var previews: some View {
        contentview()
    }
}
