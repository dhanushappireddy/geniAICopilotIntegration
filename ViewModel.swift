import Foundation

class LoginViewModel {
    enum LoginError: Error {
        case invalidCredentials
        case emptyFields
    }
    
    func authenticate(username: String, password: String, completion: @escaping (Result<Bool, LoginError>) -> Void) {
        guard !username.isEmpty, !password.isEmpty else {
            DispatchQueue.main.async {
                completion(.failure(.emptyFields))
            }
            return
        }
        
        // Simulate authentication process
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) {
            let isValid = username == "test" && password == "password"
            DispatchQueue.main.async {
                if isValid {
                    completion(.success(true))
                } else {
                    completion(.failure(.invalidCredentials))
                }
            }
        }
    }
}