//
//  LoginContractView_Type1.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//
import SwiftUICore

public protocol LoginContractView: View {
    associatedtype V: View
    var body: V { get }
}

struct LoginContractView_Type1: LoginContractView {
    private var loginActionCallback: LoginActionCallBack? = LoginPackageDepedency.dependencies.loginActionCallBack
    var body: some View {
        VStack {
            Text("LoginView - Type 1")
        }
    }
}
