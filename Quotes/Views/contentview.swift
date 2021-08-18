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
        
        NavigationView{
            
            ScrollView {
                
                VStack {
                    ForEach(model.authors) { a in
                        NavigationLink(
                            destination: CardDetailView(model: a),
                            label: {
                                card(author: a)
                            })
                        
                    }
                    
                    
                }
                
            }
            .navigationTitle("Authors")
            
        }
      
       
    }
}

struct contentview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            contentview()
          
        }
    }
}
