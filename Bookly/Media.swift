//
//  Media.swift
//  Bookly
//
//  Created by Jo Phillips on 5/3/19.
//  Copyright © 2019 Descent. All rights reserved.
//
//
//

import Foundation
enum condition {
    case poor
    case good
    case excellent
    case like_new
}
enum bookFormat {
    
    case paperback
    case hardback
    case fullsize_softback
    case Coffee_table
    case art_book
}
// MARK: Classes
/// Base class for all media types
class Media {
  
    let MediaTitle:String
    let MediaCondition:condition
    let Creator:String
    let CreatedOn:Date
    
    init(_ Title:String, mediaCondition:condition,authorName:String, createdOn:Date) {
        MediaTitle = Title
        MediaCondition = mediaCondition
        Creator = authorName
        CreatedOn = createdOn
    }
    func getTitle() -> String {
        return MediaTitle
    }
    func getCondition() -> condition {
        return MediaCondition
    }
    func getAuthor() -> String {
        return Creator
    }
    func getDate() -> Date {
        return CreatedOn
    }

}
class Books : Media {
    let firstEdition:Bool
    let format:bookFormat
    init(_ Title: String, mediaCondition: condition, authorName: String, createdOn: Date,Edition: Bool,Format:bookFormat) {
        firstEdition = Edition
        format = Format
        super.init(Title, mediaCondition: mediaCondition, authorName: authorName, createdOn: createdOn)
        
    }
    func isFirstEdition() -> Bool {
        return firstEdition
    }
}
