//
//  ViewController.swift
//  NewsExercise
//
//  Created by Menahem  Vardi on 01/09/2022.
//

import UIKit

class NewsListController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    

    var viewModel: NewsListViewModel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel = NewsListViewModel()
        
        setupViews()
    }


    func reload() {
        tableView.reloadData()
    }
    
    
    private func setupViews() {
        title = viewModel.screenTitle
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.addSpinner()
        tableView.estimatedRowHeight = NewsListItemCell.height
        tableView.rowHeight = UITableView.automaticDimension
    }
}


// MARK: - UITableViewDataSource, UITableViewDelegate

extension NewsListController {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10//viewModel.items.value.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsListItemCell.reuseIdentifier,
                                                       for: indexPath) as? NewsListItemCell else {
            assertionFailure("Cannot dequeue reusable cell \(NewsListItemCell.self) with reuseIdentifier: \(NewsListItemCell.reuseIdentifier)")
            return UITableViewCell()
        }

        //cell.fill(with: viewModel.items.value[indexPath.row],
               //   posterImagesRepository: posterImagesRepository)

        

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.isEmpty ? tableView.frame.height : self	.tableView(tableView, heightForRowAt: indexPath)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //viewModel.didSelectItem(at: indexPath.row)
    }
}




extension UITableView {
    
    
    func addSpinner(){
        let spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
        spinner.startAnimating()
        spinner.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: self.bounds.width, height: CGFloat(44))
        
        self.tableFooterView = spinner
    }
    
    
}
