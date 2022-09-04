//
//  NewsRepository.swift
//  NewsExercise
//
//  Created by Menahem  Vardi on 01/09/2022.
//

import Foundation


protocol NewsRepository {
    @discardableResult
    func fetchNewsList(query: MovieQuery, page: Int,
                         cached: @escaping (Articles) -> Void,
                         completion: @escaping (Result<Articles, Error>) -> Void) -> Cancellable?
}
