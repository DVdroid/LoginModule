//
//  Untitled.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//

public enum LoginAction {
    case signInTapped
    case signUpTapped
    case forgotPasswordTapped
    case signInSuccess
    case signInCancelled
}

public protocol LoginActionCallBack {
    func action(_ kind: LoginAction)
}

public struct LoginPackageDepedencyContainer {
    var marketName: String = ""
    var marketId: String = ""
    var localeName: String = ""
    var localeId: String = ""
    var loginActionCallBack: LoginActionCallBack?
}

public enum LoginPackageDepedency {
    public static var dependencies: LoginPackageDepedencyContainer {
        packageDepedencies
    }
    
    private static var packageDepedencies: LoginPackageDepedencyContainer = LoginPackageDepedencyContainer()
    
    public static func setMarketName(_ marketName: String) {
        packageDepedencies.marketName = marketName
    }
    
    public static func setMarketId(_ marketId: String) {
        packageDepedencies.marketId = marketId
    }
    
    public static func setLocaleName(_ localeName: String) {
        packageDepedencies.localeName = localeName
    }
    
    public static func setLocaleId(_ localeId: String) {
        packageDepedencies.localeId = localeId
    }
    
    public static func setLoginActionCallBack(_ loginActionCallBack: LoginActionCallBack) {
        packageDepedencies.loginActionCallBack = loginActionCallBack
    }
}
