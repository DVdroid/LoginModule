//
//  Untitled.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//

import Foundation

protocol LoginManager {
    var loginService: LoginService? { get }
    func getAccessToken() throws -> String
    func setAccessToken(_ token: String) throws
    func getIDToken() throws -> String
    func setIDToken(_ token: String) throws
    func remove(key: String)
}

final class DeafultLoginManager: LoginManager {
    let localStorage: LocalStorage?
    init(localStorage: LocalStorage? = UserDefaults(suiteName: "com.va.login")) {
        self.localStorage = localStorage
    }
    public var loginService: LoginService? {
        return DefaultLoginService()
    }

    public func getAccessToken() throws -> String {
        localStorage?.string(forKey: "accessToken") ?? ""
    }
    
    public func setAccessToken(_ token: String) throws {
        localStorage?.set(token, forKey: "accessToken")
    }
    
    public func getIDToken() throws -> String {
        localStorage?.string(forKey: "idToken") ?? ""
    }
    
    public func setIDToken(_ token: String) throws {
        localStorage?.set(token, forKey: "idToken")
    }
    
    public func remove(key: String) {
        localStorage?.removeObject(forKey: key)
    }
}
