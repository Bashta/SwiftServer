import Vapor
import Fluent
import FluentSQLiteDriver

public func configure(_ app: Application) throws {
    
    /// setup Fluent with a SQLite database under the Resources directory
    let dbPath = app.directory.resourcesDirectory + "db.sqlite"
    app.databases.use(.sqlite(.file(dbPath)), as: .sqlite)
    
    /// use the Public directory to serve public files
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    /// extend paths to always contain a trailing slash
    app.middleware.use(ExtendPathMiddleware())
    
    /// setup modules
    let modules: [ModuleInterface] = [
        WebModule(),
        BlogModule(),
    ]
    for module in modules {
        try module.boot(app)
    }
    
    /// use automatic database migration
    try app.autoMigrate().wait()
}

