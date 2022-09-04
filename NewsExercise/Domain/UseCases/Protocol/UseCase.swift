//
//  UseCase.swift
//  NewsExercise
//
//  Created by Menahem Vardi on 01/09/2022.
//

import Foundation

public protocol UseCase {
    @discardableResult
    func start() -> Cancellable?
}

protocol FetchNewsUseCase {
    func execute(
                 completion: @escaping (Result<Articles, Error>) -> Void) -> Cancellable?
}
