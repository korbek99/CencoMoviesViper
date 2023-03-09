//
//  TopRatesMoviesRouter.swift
//  CencoMovieViper
//


import UIKit

@objc protocol TopRatesMoviesRoutingLogic {
    func routeToDetailsTop(name:String ,desc:String ,images:String ) 
}

protocol TopRatesMoviesDataPassing {
    var dataStore: TopRatesMoviesDataStore? { get }
}

class TopRatesMoviesRouter: NSObject, TopRatesMoviesRoutingLogic, TopRatesMoviesDataPassing {

    weak var viewController: TopRatesMoviesViewController?
    var dataStore: TopRatesMoviesDataStore?

    // MARK: - Routing
    func routeToDetailsTop(name:String ,desc:String ,images:String ) {
        let ViewController = TopRatesDetailsViewController()
//        ViewController.latitudMap = latitud
//        ViewController.lontitudMap = lontitud
//        ViewController.lugarString = nombreString
        self.viewController?.navigationController?.pushViewController(ViewController, animated: true)
    }
    // MARK: - Passing data

    //func passDataToSomewhere(source: TopRatesMoviesDataStore, destination: inout SomewhereDataStore) {
    //  destination.name = source.name
    //}
}
