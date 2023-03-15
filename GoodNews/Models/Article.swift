//
//  Article.swift
//  GoodNews
//
//  Created by Berkay Kuzu on 15.03.2023.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article] // The property name should be same with json key name.
}

struct Article: Decodable {
    let title: String
    let description: String
}
