//
//  TemplateRepresentable.swift
//  
//
//  Created by Erison on 15/01/2023.
//

import Vapor
import SwiftSgml
public protocol TemplateRepresentable {
 
 @TagBuilder
 func render(_ req: Request) -> Tag
}
