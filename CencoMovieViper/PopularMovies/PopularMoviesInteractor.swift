//
//  PopularMoviesInteractor.swift
//  CencoMovieViper
//




protocol PopularMoviesBusinessLogic {

}

protocol PopularMoviesDataStore {

}

class PopularMoviesInteractor: PopularMoviesBusinessLogic, PopularMoviesDataStore {

    // MARK: - Attributes

    var presenter: PopularMoviesPresentationLogic?
    var worker: PopularMoviesWorkerProtocol?
   // var analyticsService: GoogleAnalyticsInteractor?

    // MARK: - PopularMoviesDataStore

//    init(
//        analyticsService: GoogleAnalyticsInteractor = GoogleAnalyticsServiceInteractor()
//        ) {
//        worker = PopularMoviesWorker()
//        self.analyticsService = analyticsService
//    }

    // MARK: - PopularMoviesBusinessLogic
}
