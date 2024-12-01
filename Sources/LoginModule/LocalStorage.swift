//
//  Untitled.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//

import Foundation

protocol LocalStorage {
    func string(forKey: String) -> String?
    func set(_ value: Any?, forKey defaultName: String)
    func removeObject(forKey defaultName: String)
}

extension UserDefaults: LocalStorage {}
