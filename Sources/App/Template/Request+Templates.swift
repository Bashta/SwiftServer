//
//  /Request+Templates.swift
//  
//
//  Created by Erison on 15/01/2023.
//
import Vapor

public extension Request {
    var templates: TemplateRenderer { .init(req: self) }
}
