//
//  DefaultNewsRepository.swift
//  NewsExercise
//
//  Created by Menahem Vardi on 04/09/2022.
//

import Foundation

final class DefaultNewsRepository {

    private let t:String
    init() {
        self.t=""
       
    }
}

extension DefaultNewsRepository: NewsRepository {

    public func fetchNewsList(
                                completion: @escaping (Result<Articles, Error>) -> Void) -> Cancellable? {

        
        return RepositoryTask()
    }
}




//mockup in order to make the build
class RepositoryTask: Cancellable {
    var isCancelled: Bool = false
    
    func cancel() {
       
        isCancelled = true
    }
}
