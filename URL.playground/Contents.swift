import UIKit

// URL
let urlString = "https://itunes.apple.com/search?media=music&entity=song&term=Gdragon"
let url = URL(string: urlString)

url?.absoluteString
url?.scheme
url?.host
url?.path
url?.query
url?.baseURL

let baseURL = URL(string: "https://itunes.apple.com")
let relativeURL = URL(string: "search?media=music&entity=song&term=Gdragon", relativeTo: baseURL)

relativeURL?.absoluteString
relativeURL?.scheme
relativeURL?.host
relativeURL?.path
relativeURL?.query
relativeURL?.baseURL

// URLComponents
var urlComponnets = URLComponents(string: "https://itunes.apple.com/search?")
var mediaQuery = URLQueryItem(name: "media", value: "music")
var entityQuery = URLQueryItem(name: "entity", value: "song")
var termQuery = URLQueryItem(name: "term", value: "Gdragon ")

urlComponnets?.queryItems?.append(mediaQuery)
urlComponnets?.queryItems?.append(entityQuery)
urlComponnets?.queryItems?.append(termQuery)

urlComponnets?.url
urlComponnets?.string
urlComponnets?.queryItems
