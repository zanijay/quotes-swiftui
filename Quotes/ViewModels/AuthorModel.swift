//
//  AuthorModel.swift
//  Quotes
//
//  Created by Zangah Malik on 8/16/21.
//

import Foundation

class AuthorModel:ObservableObject{
   @Published var authors = [Author]()
    
    init() {
        
        //get url path to json file
        
        
        let pathstring = Bundle.main.path(forResource: "data", ofType: "json")
        //since url path can be nil must use optional binding to make sure not nil
        
        if let path = pathstring {
            
            // create url object
            
            let url = URL(fileURLWithPath: path)
        
        do{
            
            //create data object
            let data = try Data(contentsOf: url)
            
            //decode the data
            let decoder = JSONDecoder()
            
           
            var authordata = try decoder.decode([Author].self, from: data)
                
                //add unique ids
                
                for index in 0..<authordata.count {
                    
                    // Add UUID to author instances
                    authordata[index].id = UUID()
                    
                }
            self.authors = authordata
               
            }
        
        catch{
            print("error getting data")
            
        }
       
        }
    
       
    } // end of class
    
    }
