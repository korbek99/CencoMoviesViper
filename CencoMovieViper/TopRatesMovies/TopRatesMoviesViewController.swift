//
//  TopRatesMoviesViewController.swift
//  CencoMovieViper
//


import UIKit
struct ViewModelErrorTop {
    let title: String
    let message: String
    let icon: UIImage?
    let code: String
    var animated: Bool = true
}
protocol TopRatesMoviesDisplayLogic: AnyObject {
    func displayViewTextsInfo(listaMovies: [Result])
    func displayDiscountNotFoundError(viewModel: ViewModelErrorTop)
    func displayConnectionError(viewModel: ViewModelErrorTop)
     func startloading()
     func stoploading()
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
    lazy var tableView: UITableView = {
        let table: UITableView = .init()
        table.delegate = self
        table.dataSource = self
        table.register(TopRatesViewCell.self, forCellReuseIdentifier: "TopRatesViewCell")
        table.rowHeight = 200.0
        table.separatorColor = UIColor.orange
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    // MARK: - Attributes
    public var listMovies: [Result] = []
    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        startloading()
    }

    // MARK: - Private

    // MARK: - Public
    public func startloading(){
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating();
        alert.view.addSubview(loadingIndicator)
        self.present(alert, animated: true, completion: nil)
    }
    
    public func stoploading(){
        self.dismiss(animated: false, completion: nil)
    }
    // MARK: - Actions

    // MARK: - TopRatesMoviesDisplayLogic
    func displayViewTextsInfo(listaMovies: [Result]) {
        for items in listaMovies {
//            listProducts.append(ProductosMenu(id: items.id,
//                                              name: items.name,
//                                              desc: items.desc,
//                                              price: items.price,
//                                              image: items.image,
//                                              page: items.page,
//                                              latitude: items.latitude,
//                                              longitude: items.longitude))
        }
        DispatchQueue.main.async { [self] in
            self.tableView.reloadData()
            stoploading()
        }
    }
    
    func displayDiscountNotFoundError(viewModel: ViewModelErrorTop) {

    }
    func displayConnectionError(viewModel: ViewModelErrorTop) {

    }
}
extension TopRatesMoviesViewController:  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TopRatesViewCell") as? TopRatesViewCell else { return UITableViewCell() }
        cell.configure(TopRatesViewCellModel(name: listMovies[indexPath.row].title, title: listMovies[indexPath.row].overview, lang: String(listMovies[indexPath.row].originalLanguage), imagen: listMovies[indexPath.row].posterPath))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.router?.routeToDetailsMenu(nombre: listMovies[indexPath.row].name, image: String(listMovies[indexPath.row].image), decrip: listMovies[indexPath.row].desc, precio: String(listMovies[indexPath.row].price), latitud: listMovies[indexPath.row].latitude, lontitud: listMovies[indexPath.row].longitude)
    }
}
