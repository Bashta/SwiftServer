import Vapor
import SwiftHtml

struct BaseTemplate: TemplateRepresentable {
    let title: String
    
    func render(_ req: Request) -> Tag {
        Html {
            Head {
                Title(title)
            }
            Body {
                H1(title)
            }
        }
    }
}

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    app.routes.get("Hello") { req -> Response in
        return req.templates.renderHtml(BaseTemplate(title: "Shushu Moza!!!"))
    }

    // register routes
    try routes(app)
}
