import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        req.templates.renderHtml(WebIndexTemplate(.init(title: "Shushu Moza!!!", message: "Fiq fiq, behet ligj")))
    }
}
