//
//  CardDetailView.swift
//  Quotes
//
//  Created by Zangah Malik on 8/17/21.
//

import SwiftUI

struct CardDetailView: View {
    var model:Author
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 20.0) {
            
            //Author name
            Text(model.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            //quotes
            ForEach(model.quotes,id: \.self){ r in
                Text(r)
                
            }
        }
        .padding(.all)//end of vstack
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(model: Author.testData())
    }
}
