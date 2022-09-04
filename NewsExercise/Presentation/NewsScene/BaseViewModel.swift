//
//  BaseViewModel.swift
//  NewsExercise
//
//  Created by Menahem  Vardi on 01/09/2022.
//

import Foundation
import UIKit


protocol BaseViewModelProtocol {
    associatedtype U
}

class BaseViewModel: BaseViewModelProtocol{
    typealias U = UseCase
    
    var useCase: U?
    var showError: Bool = false
    var isLoading: Bool = false

    init(useCase: U) {
        self.useCase = useCase
    }
}
