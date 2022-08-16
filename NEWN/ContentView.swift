//
//  ContentView.swift
//  NEWN
//
//  Created by Dalton Ulrich on 8/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var items: [GridItem] = Array(repeating: .init(.fixed(100)), count: 3)
    
    var body: some View {
        ScrollView(showsIndicators: false, content: {
            HStack {
                Text("MORE OF WHAT YOU LIKE")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(1...10, id: \.self) { count in
                        VStack {
                            Rectangle()
                                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                .cornerRadius(8)
                                
                            Text("ABC \(count)")
                                .font(.headline)
                                .frame(width: 100.0, height: 20.0, alignment: .leading)
                                
                            Text("R&B")
                                .frame(width: 100.0, height: 20.0, alignment: .leading)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.leading, 10.0)
                }
            }
            .padding(.bottom)
            
            HStack {
                Text("NEWM ARTISTS")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: items) {
                    ForEach(0..<20) { i in
                        HStack {
                            Rectangle()
                                .frame(width: 75, height: 75)
                                .cornerRadius(100)
                            VStack(alignment: .leading) {
                                Text("Name")
                                    .font(.headline)
                                
                                Text("\(i) songs")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    
                            }
                        }
                    }
                    .padding(.leading, 10.0)
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}


