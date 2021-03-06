//
//  Article.swift
//  newsfeedSkeleton
//
//  Created by Coco Ma on 4/8/22.
//

import Foundation

struct ArticleResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
       
    let id: UUID = UUID()
    var author: String?
    var url: String?
    var source, title: String?
    var articleDescription: String?
    var image: String?
    var date: Date?

       enum CodingKeys: String, CodingKey {
           case author, url, source, title, image, date
           case articleDescription = "description"
       }

}

