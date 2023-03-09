//
//  PopularMoviesRouter.swift
//  CencoMovieViper
//


import UIKit

@objc protocol PopularMoviesRoutingLogic {
    func routeToDetails(name:String ,desc:String ,images:String )
}

protocol PopularMoviesDataPassing {
    var dataStore: PopularMoviesDataStore? { get }
}

class PopularMoviesRouter: NSObject, PopularMoviesRoutingLogic, PopularMoviesDataPassing {

    weak var viewController: PopularMoviesViewController?
    var dataStore: PopularMoviesDataStore?

    // MARK: - Routing
    func routeToDetails(name:String ,desc:String ,images:String ) {
        let ViewController = TopRatesDetailsViewController()
//        ViewController.latitudMap = latitud
//        ViewController.lontitudMap = lontitud
//        ViewController.lugarString = nombreString
        self.viewController?.navigationController?.pushViewController(ViewController, animated: true)
    }
    // MARK: - Passing data

    //func passDataToSomewhere(source: PopularMoviesDataStore, destination: inout SomewhereDataStore) {
    //  destination.name = source.name
    //}
}
