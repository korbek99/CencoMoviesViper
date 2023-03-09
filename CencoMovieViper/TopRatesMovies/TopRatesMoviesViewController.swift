//
//  TopRatesMoviesViewController.swift
//  CencoMovieViper
//


import UIKit

protocol TopRatesMoviesDisplayLogic: AnyObject {

}

class TopRatesMoviesViewController: UIViewController, TopRatesMoviesDisplayLogic {

    var interactor: TopRatesMoviesBusinessLogic?
    var router: (NSObjectProtocol & TopRatesMoviesRoutingLogic & TopRatesMoviesDataPassing)?

    // MARK: - Object lifecycle

    init() {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: - Setup

    private func setup() {
        let viewController = self
        let interactor = TopRatesMoviesInteractor()
        let presenter = TopRatesMoviesPresenter()
        let router = TopRatesMoviesRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: - IBOutlets

    // MARK: - Attributes

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Private

    // MARK: - Public

    // MARK: - Actions

    // MARK: - TopRatesMoviesDisplayLogic
}
