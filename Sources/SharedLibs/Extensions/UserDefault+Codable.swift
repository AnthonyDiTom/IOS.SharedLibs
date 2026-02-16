//
//  UserDefault+Extentions.swift
//  MyBroker
//
//  Created by Anthony Di Tomasso on 08/04/2020.
//  Copyright © 2020 Portima. All rights reserved.
//

import Foundation

public extension UserDefaults {
    
    func set<Element: Codable>(value: Element, forKey key: String) {
        let data = try? JSONEncoder().encode(value)
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    func codable<Element: Codable>(forKey key: String) -> Element? {
        guard let data = UserDefaults.standard.data(forKey: key) else { return nil }
        let element = try? JSONDecoder().decode(Element.self, from: data)
        return element
    }
    
    func setArray<Element: Codable>(value: [Element], forKey key: String) {
        let data = try? JSONEncoder().encode(value)
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    func codableArray<Element: Codable>(forKey key: String) -> [Element]? {
        guard let data = UserDefaults.standard.data(forKey: key) else { return nil }
        let element = try? JSONDecoder().decode([Element].self, from: data)
        return element
    }
}
