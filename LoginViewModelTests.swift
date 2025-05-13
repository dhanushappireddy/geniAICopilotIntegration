import XCTest
@testable import YourAppName

class LoginViewModelTests: XCTestCase {
    var viewModel: LoginViewModel!

    override func setUp() {
        super.setUp()
        viewModel = LoginViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func testAuthenticateWithValidCredentials() {
        let expectation = self.expectation(description: "Valid credentials should return success")
        
        viewModel.authenticate(username: "test", password: "password") { success in
            XCTAssertTrue(success, "Authentication should succeed with valid credentials")
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2.0, handler: nil)
    }

    func testAuthenticateWithInvalidCredentials() {
        let expectation = self.expectation(description: "Invalid credentials should return failure")
        
        viewModel.authenticate(username: "wrong", password: "credentials") { success in
            XCTAssertFalse(success, "Authentication