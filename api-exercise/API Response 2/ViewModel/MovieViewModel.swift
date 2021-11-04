import Foundation

protocol MovieViewModelProtocol {
    var page: Int { get }
    func callNetworkManager()
}

struct MovieInformation {
    let id: Int
    let posterPath: String
    let backdrop: String
    let title: String
}

final class MovieViewModel: MovieViewModelProtocol {
    var page: Int
    
    let networkManager: NetworkManager
    var movies: [MovieInformation] = []

    init(networkManager: NetworkManager = .init(), page: Int) {
        self.networkManager = networkManager
        self.page = page
    }
    
    func callNetworkManager() {
        networkManager.getNewMovie(page: page) { [weak self] movies, error in
            if let error = error {
                print(error)
            } else {
                movies.map { movie in
                    self?.getSomeInformation(of: movie)
                }
            }
        }
    }
    
    func getSomeInformation(of movies: [Movie]) {
        self.movies =  movies.map{MovieInformation(id: $0.id, posterPath: $0.posterPath, backdrop: $0.backdrop, title: $0.title)}
    }
}
