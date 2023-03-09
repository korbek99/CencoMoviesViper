//
//  TopRatesMoviesRouter.swift
//  CencoMovieViper
//


import UIKit

@objc protocol TopRatesMoviesRoutingLogic {
}

protocol TopRatesMoviesDataPassing {
    var dataStore: TopRatesMoviesDataStore? { get }
}

class TopRatesMoviesRouter: NSObject, TopRatesMoviesRoutingLogic, TopRatesMoviesDataPassing {

    weak var viewController: TopRatesMoviesViewController?
    var dataStore: TopRatesMoviesDataStore?

    // MARK: - Routing

    // MARK: - Passing data

    //func passDataToSomewhere(source: TopRatesMoviesDataStore, destination: inout SomewhereDataStore) {
    //  destination.name = source.name
    //}
}
