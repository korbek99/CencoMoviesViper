//
//  TopRatesMoviesInteractor.swift
//  CencoMovieViper
//




protocol TopRatesMoviesBusinessLogic {

}

protocol TopRatesMoviesDataStore {

}

class TopRatesMoviesInteractor: TopRatesMoviesBusinessLogic, TopRatesMoviesDataStore {

    // MARK: - Attributes

    var presenter: TopRatesMoviesPresentationLogic?
    var worker: TopRatesMoviesWorkerProtocol?
   // var analyticsService: GoogleAnalyticsInteractor?

    // MARK: - TopRatesMoviesDataStore

//    init(
//        analyticsService: GoogleAnalyticsInteractor = GoogleAnalyticsServiceInteractor()
//        ) {
//        worker = TopRatesMoviesWorker()
//        self.analyticsService = analyticsService
//    }

    // MARK: - TopRatesMoviesBusinessLogic
}
