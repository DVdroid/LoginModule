//
//  Untitled.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//

import Foundation

protocol LoginService {
    var session: URLSession { get }
    func loginUser(request: URLRequest) async throws -> Data
    func logoutUser(request: URLRequest) async throws -> Data
}

final class DefaultLoginService: LoginService {
    let session: URLSession
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    public func loginUser(request: URLRequest) async throws -> Data {
        let (data, response) = try await session.data(for: request)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        return data
    }
    
    public func logoutUser(request: URLRequest) async throws -> Data {
        let (data, response) = try await session.data(for: request)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        return data
    }
}
