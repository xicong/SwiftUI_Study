//
//  LearnNavigationView.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnNavigationView: View {
    var body: some View {
        VStack{
            
            NavigationView {
                List {
                    Text("Hello World")
                }.navigationBarTitle(Text("Navigation Title")) // Default to large title style
            }

            NavigationView {
                List {
                    Text("Hello World")
                }.navigationBarTitle(Text("Navigation Title"), displayMode: .inline)
            }

            NavigationView {
                List {
                    Text("Hello World")
                }
                .navigationBarItems(trailing:
                    Button(action: {
                        // Add action
                    }, label: {
                        Text("Add")
                    })
                )
                .navigationBarTitle(Text("Navigation Title"))
            }

            NavigationView {
                List {
                    NavigationLink("Go to detail", destination: Text("New Detail"))
                }.navigationBarTitle("Master")
                Text("Placeholder for Detail")
            }
            
            //暂时没发现特殊效果后面发现了在更新
//            NavigationView {
//                Text("0").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.black)
//                Text("0").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.blue)
//            }
//            .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarTitle("",displayMode: .inline)
    }
}

struct LearnNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        LearnNavigationView()
    }
}
