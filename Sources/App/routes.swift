import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        req.templates.renderHtml(WebIndexTemplate(WebIndexContext(title: "Shushu", message: "Pershendetje Moza!!!"), {
            
        }))
    }
}
