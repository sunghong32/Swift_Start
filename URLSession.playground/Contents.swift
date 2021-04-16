import UIKit

// URLSession

// 1. URLSessionConfiguration
// 2. URLSession
// 3. URLSessionTask를 이용해서 서버와 네트워킹

// URLSessionTask

// - dataTask
// - uploadTask
// - downloadTask

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

// URL
// URLComponents
var urlComponnets = URLComponents(string: "https://itunes.apple.com/search?")!
var mediaQuery = URLQueryItem(name: "media", value: "music")
var entityQuery = URLQueryItem(name: "entity", value: "song")
var termQuery = URLQueryItem(name: "term", value: "지드래곤")
urlComponnets.queryItems?.append(mediaQuery)
urlComponnets.queryItems?.append(entityQuery)
urlComponnets.queryItems?.append(termQuery)
let requestURL = urlComponnets.url!

struct Response: Codable {
    let resultCount: Int
    let tracks: [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case tracks = "results"
    }
}

struct Track: Codable {
    let title: String
    let artistName: String
    let thumbnailPath: String
    
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artistName
        case thumbnailPath = "artworkUrl100"
    }
}

let dataTask = session.dataTask(with: requestURL) { (data, response, error) in
    guard error == nil else { return }
    
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else { return }
    let successRange = 200..<300
    
    guard successRange.contains(statusCode) else {
        // handle response error
        return
    }
    
    guard let resultData = data else { return }
    let resultString = String(data: resultData, encoding: .utf8)
    
    // 하고싶은 욕구 목록
    // - Data -> Track 목록으로 가져오고 싶다. [Track]
    // - Track 오브젝트를 만들어야겠다.
    // - Data에서 struct로 파싱해야겠다. > Codable 이용해서 만들자
    //   - Json 파일, 데이터 > 오브젝트 (Codable 이용하겠다)
    //   - Response, Track 이렇게 두개 만들어야겠다.
    
    // 해야할 일
    // - Response, Track struct
    // - struct 프러퍼티의 이름과, 실제 데이터의 키와 맞추기 (Codable 이용하기 위해)
    // - 파싱하기 (Decoding 하기)
    // - 트랙리스트 가져오기
    
    // 파싱 및 트랙 가져오기
    do {
        let decoder = JSONDecoder()
        let response = try decoder.decode(Response.self, from: resultData)
        let tracks = response.tracks
        
        print("---> tracks : \(tracks.count) - \(tracks.last?.title), \(tracks.last?.thumbnailPath)")
    } catch let error {
        print("---> error : \(error.localizedDescription)")
    }
    
    //print("---> result : \(resultString)")
 }

dataTask.resume()



