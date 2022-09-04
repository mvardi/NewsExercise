//
//  FetchRecentNewsUseCase.swift
//  NewsExercise
//
//  Created by Menahem  Vardi on 01/09/2022.
//

import Foundation


final class FetchRecentNewsUseCase: FetchNewsUseCase {
    
    private let newsRepository: NewsRepository
    
    
    init(newsRepository: NewsRepository){
        self.newsRepository = newsRepository
    }
    
    
    func execute(completion: @escaping (Result<Articles, Error>) -> Void) -> Cancellable? {
        return newsRepository.fetchNewsList(
                                                completion: { result in


            completion(result)
        })
    }
    
    
    
    
    
    
    
    
    
}
