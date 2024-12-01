//
//  Untitled.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//

public protocol LoginContractLogic {
    associatedtype View: LoginContractView
    func makeLoginView() -> View
    func getAccessToken() throws -> String
    func getIDToken() throws -> String
    func refreshToken() async throws -> (String, String)
    func logout() async throws
}
