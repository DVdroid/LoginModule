//
//  LoginContractView_Type1.swift
//  LoginModule
//
//  Created by Vikash Anand on 01/12/24.
//
import SwiftUI

public protocol LoginContractView: View {
    associatedtype V: View
    var body: V { get }
}

struct LoginContractView_Type1: LoginContractView {
    private var loginActionCallback: LoginActionCallBack? = LoginPackageDepedency.dependencies.loginActionCallBack
    var body: some View {
        VStack {
            Text("LoginView - Type 1")
            Spacer()
            HStack {
                Button("Sign In") {
                    loginActionCallback?.action(.signInTapped)
                }
                Spacer()
                Button("Forgot Password") {
                    loginActionCallback?.action(.forgotPasswordTapped)
                }
            }
            .padding(.bottom, 32)
        }
    }
}
