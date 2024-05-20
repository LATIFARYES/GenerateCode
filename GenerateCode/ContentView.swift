//
//  ContentView.swift
//  GenerateCode
//
//  Created by LATIFA on 20/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: MyView()) {
                Text("Link to MyView")
            }
        }
    }
}

struct MyView: View {
    
    @State private var randomString: String = ""
    
    var body: some View {
        VStack {
            Text(randomString)
                .padding()
            
            Button("Generate Code") {
                randomString = randomStringWithLength(len: 6) as String
            }
            .padding()
        }
        .navigationTitle("Generated Code")
    }
    
    func randomStringWithLength(len: Int) -> String {
        let letters = "0123456789"
        var randomString = ""
        
        for _ in 0..<len {
            let randomIndex = Int(arc4random_uniform(UInt32(letters.count)))
            let randomCharacter = letters[letters.index(letters.startIndex, offsetBy: randomIndex)]
            randomString.append(randomCharacter)
        }
        
        return randomString
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

