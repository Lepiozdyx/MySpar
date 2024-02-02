//
//  NetworkManager.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import Foundation

final class NetworkManager {
    enum NetworkError: Error {
        case invalidURL
        case noData
        case decodingError
    }
    
    static let shared = NetworkManager()
    private let imageCache = NSCache<NSURL, NSData>()
    private init() {}
    
    func fetchImage(from url: URL, completion: @escaping (Result<Data, NetworkError>) -> Void) {
        if let cachedImageData = imageCache.object(forKey: url as NSURL) {
            DispatchQueue.main.async {
                completion(.success(cachedImageData as Data))
            }
            return
        }
        
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: url) else {
                completion(.failure(.noData))
                return
            }
            
            self.imageCache.setObject(imageData as NSData, forKey: url as NSURL)
            
            DispatchQueue.main.async {
                completion(.success(imageData))
            }
        }
    }
}
