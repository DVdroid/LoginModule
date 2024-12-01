// The Swift Programming Language
// https://docs.swift.org/swift-book

public final class DefaultLoginContractLogic: LoginContractLogic {
    var loginManager: LoginManager = DeafultLoginManager()
    public func makeLoginView() -> some LoginContractView {
        LoginContractView_Type1()
    }
    
    public func getAccessToken() throws -> String {
        ""
    }
    
    public func getIDToken() throws -> String {
        ""
    }
    
    public func refreshToken() async throws -> (String, String) {
        ("", "")
    }
    
    public func logout() async throws {
    }
}

