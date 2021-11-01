
public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?,
                           urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?,
                                     urlParameters: Parameters?,
                                     additionHeadears: HTTPHeaders?)
    
}
