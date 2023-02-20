//
//  ListViewModel.swift
//  TodoList
//
//  Created by Leonardo Almeida on 20/02/23.
//

import Foundation

class ListViewModel: ObservableObject  {
     
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "Estudar", isCompleted: false),
            ItemModel(title: "Trabalhar", isCompleted: true),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
 
