//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Berkay Kuzu on 15.03.2023.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numbersofSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
    
}
 
//ArticleViewModel is responsible for displaying the article.

struct ArticleViewModel {
    private let article: Article
}

// This ArticleViewModel is just responsible for displaying one particular news article!

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
