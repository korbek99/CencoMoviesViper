//
//  PopularMoviesViewController.swift
//  CencoMovieViper
//


import UIKit

protocol PopularMoviesDisplayLogic: AnyObject {

}

class PopularMoviesViewController: UIViewController, PopularMoviesDisplayLogic {

    var interactor: PopularMoviesBusinessLogic?
    var router: (NSObjectProtocol & PopularMoviesRoutingLogic & PopularMoviesDataPassing)?

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
        let interactor = PopularMoviesInteractor()
        let presenter = PopularMoviesPresenter()
        let router = PopularMoviesRouter()
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

    // MARK: - PopularMoviesDisplayLogic
}
