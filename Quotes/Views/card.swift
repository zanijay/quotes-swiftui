//
//  ContentView.swift
//  Quotes
//
//  Created by Zangah Malik on 8/16/21.
//

import SwiftUI

struct card: View {
    
    var author:Author
    
    var body: some View {
        
        ZStack {
            Image(author.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
            
            VStack{
            Text(author.quotes[0])
                .font(.largeTitle)
                .fontWeight(.bold)
                
                
                
                
                Text("- " + author.name)
                
            }
            .padding([.top, .leading], 20.0)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
            
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
        
       
    } //end of view
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        card(author: Author.testData())
    }
}
