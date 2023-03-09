//
//  PopularMoviesRouter.swift
//  CencoMovieViper
//


import UIKit

@objc protocol PopularMoviesRoutingLogic {
}

protocol PopularMoviesDataPassing {
    var dataStore: PopularMoviesDataStore? { get }
}

class PopularMoviesRouter: NSObject, PopularMoviesRoutingLogic, PopularMoviesDataPassing {

    weak var viewController: PopularMoviesViewController?
    var dataStore: PopularMoviesDataStore?

    // MARK: - Routing

    // MARK: - Passing data

    //func passDataToSomewhere(source: PopularMoviesDataStore, destination: inout SomewhereDataStore) {
    //  destination.name = source.name
    //}
}
