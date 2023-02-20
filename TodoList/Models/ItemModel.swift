//
//  ItemModel.swift
//  TodoList
//
//  Created by Leonardo Almeida on 20/02/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
