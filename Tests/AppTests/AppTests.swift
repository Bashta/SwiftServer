@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testRootGet() throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try configure(app)

        try app.test(.GET, "", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
        })
    }
}
