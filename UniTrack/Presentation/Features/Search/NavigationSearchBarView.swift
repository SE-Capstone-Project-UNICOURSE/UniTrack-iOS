//
//  NavigationSearchBarView.swift
//  Finance
//
//  Created by UI8 on 22/10/2020.
//

import SwiftUI

//This is a native iOS search bar. Unfortunately, there is no such component in SwiftUI, so we have used UIKit version here. We will update this file once Apple releases the first-party support for search bar in SwiftUI.
struct NavigationSearchBarView<SearchResultsView>: UIViewControllerRepresentable where SearchResultsView : View {
    typealias UIViewControllerType = SearchViewWrapper
    @Binding var searchText: String
    private let searchResultsContent: () -> SearchResultsView?
    init(text: Binding<String>, @ViewBuilder searchResultsContent: @escaping () -> SearchResultsView? = { nil }) {
        self._searchText = text
        self.searchResultsContent = searchResultsContent
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(representable: self)
    }
    func makeUIViewController(context: Context) -> SearchViewWrapper {
        SearchViewWrapper()
    }
    func updateUIViewController(_ searchVievWrapper: SearchViewWrapper, context: Context) {
        searchVievWrapper.searchController = context.coordinator.searchController
        searchVievWrapper.searchController?.searchBar.text = searchText
        if let searchResultsContent = self.searchResultsContent() {
            (searchVievWrapper.searchController?.searchResultsController as? UIHostingController<SearchResultsView>)?.rootView = searchResultsContent
        }
    }
    class Coordinator: NSObject, UISearchResultsUpdating, UISearchBarDelegate {
        let representable: NavigationSearchBarView
        let searchController: UISearchController
        init(representable: NavigationSearchBarView) {
            self.representable = representable
            var searchResultsController: UIViewController? = nil
            if let searchResultsContent = representable.searchResultsContent() {
                searchResultsController = UIHostingController(rootView: searchResultsContent)
            }
            searchController = UISearchController(searchResultsController: searchResultsController)
            super.init()
            searchController.searchResultsUpdater = self
            searchController.searchBar.delegate = self
            searchController.searchBar.text = representable.searchText
        }
        func updateSearchResults(for searchController: UISearchController) {
        }
    }
    class SearchViewWrapper: UIViewController {
        var searchController: UISearchController? {
            get { self.parent?.navigationItem.searchController }
            set { self.parent?.navigationItem.searchController = newValue }
        }
    }
}
