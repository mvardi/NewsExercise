//
//  NewsListViewModel.swift
//  NewsExercise
//
//  Created by Menahem  Vardi on 01/09/2022.
//

import Foundation

struct NewsListViewModelActions {
    let showNews: (Article) -> Void
    
}


protocol NewsListViewModelInput {
    associatedtype U
}

protocol NewsListViewModelOutput {
    
    var isEmpty: Bool { get }
    var screenTitle: String { get }
    var emptyDataTitle: String { get }
    var errorTitle: String { get }
    
}


protocol NewsListViewModelProtocol: NewsListViewModelInput, NewsListViewModelOutput {}

class NewsListViewModel: NewsListViewModelProtocol{
    var isEmpty: Bool
    
    var screenTitle: String
    
    var emptyDataTitle: String
    
    var errorTitle: String
    
    typealias U = UseCase
    
    var useCase: U?
    var showError: Bool = false
    var isLoading: Bool = false

    init() {
        self.emptyDataTitle=""
        self.isEmpty=true
        self.screenTitle=""
        self.errorTitle=""
       
    }
    
    init(useCase: U) {
        self.emptyDataTitle=""
        self.isEmpty=true
        self.screenTitle=""
        self.errorTitle=""
        self.useCase = useCase
    }
}


final class DefaultNewsListViewModel: NewsListViewModel {
   
    
    
    let repository: DefaultNewsRepository?
    
    override init() {
        //self.emptyDataTitle=""
        //self.isEmpty=true
        //self.screenTitle=""
        //self.errorTitle=""
        self.repository = DefaultNewsRepository()
        
        let fetchRecentNewsUseCase = FetchRecentNewsUseCase(newsRepository: repository!)
        super.init(useCase: fetchRecentNewsUseCase as! UseCase)
    }
    
    init(useCase: FetchRecentNewsUseCase) {
        self.repository = DefaultNewsRepository()
        super.init(useCase: useCase as! UseCase)
    }
    
    
    
    
    
    
    
    
}
