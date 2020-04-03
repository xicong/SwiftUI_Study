//
//  LearneButton.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI
import Combine

struct LearneEditButton: View {
    
    @ObservedObject
    private var source = dataSource()
    
    var body: some View {
        List{
            ForEach(source.items, id: \.self) { idx in
                Text("\(idx)")
            }
            .onDelete(perform: deletePlace)
            .onMove(perform: movePlace)
        }
        .navigationBarTitle("",displayMode: .inline)
        .navigationBarItems(trailing: EditButton())
    }
    
    func deletePlace(at offset: IndexSet) {
        if let last = offset.last {
            source.items.remove(at: last)
            print(source.items.count)
        }
    }
    
    func movePlace(from source: IndexSet, to destination: Int) {
        print(source,destination)
    }
}

class dataSource: ObservableObject {
    public var didChange = PassthroughSubject<Void, Never>()
    public var items: [Int] {
        didSet {
            didChange.send(())
        }
    }
    init() {
        self.items = (0..<10).map { $0 }
    }
}

struct LearneButton_Previews: PreviewProvider {
    static var previews: some View {
        LearneEditButton()
    }
}
