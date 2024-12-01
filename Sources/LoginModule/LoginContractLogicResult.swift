//
//  LoginContractLogicResult.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//

public enum LoginType {
    case type1
    case type2
}

public final class LoginContractLogicResult {
    public let contractResult: any LoginContractLogic
    public init(loginType: LoginType) {
        switch loginType {
        case .type1:
            contractResult = DefaultLoginContractLogic()
        case .type2:
            contractResult = DefaultLoginContractLogic()
        }
    }
}
