//
//  Article.swift
//  NewsExercise
//
//  Created by Menahem Vardi on 01/09/2022.
//

import Foundation


struct Article: Equatable {
    let source: Source
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: Date? //maybe string
    let content: String?
}


struct Source: Equatable {
    let id: String?
    let name: String
}


struct Articles: Equatable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
