# BithumbAPI-Moya-Practice
 Moya practice through Bithumb API
 
 ### **BaseTargetType**

```swift
protocol BaseTargetType:TargetType { }

extension BaseTargetType {
    
    var baseURL: URL {
        return URL(string: URLConst.base)!
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var headers: [String : String]? {
        return [
            "content-type": "application/json"
        ]
    }
```

- TargetType을 채택하고 있는 **BaseTargetType protocol**를 만들어 MoyaProvider를 구체화하기 위해 필요한 프로토콜인 TargetType을 Base화
- 즉, **필요한 것들만 작성하기 위한 준비를 편하게 만듬**

### API

```swift
enum BithumbAPI {
    case getData(orderCurrency: String, paymentCurrency: String)
}

extension BithumbAPI: BaseTargetType {
    var baseURL: URL {
        return URL(string: URLConst.base)!
    }
        
    // 요청 경로
    // 주문 통화와 결제 통화
    var path: String {
        switch self {
        case .getData(let orderCurrency, let paymentCurrency):
            return URLConst.ticker + "?order_currency=\(orderCurrency)&payment_currency=\(paymentCurrency)"
        }
    }
    
    // http 요청 메소드
    var method: Moya.Method {
        switch self {
        case .getData:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getData:
            return .requestPlain // A request with no additional data
        }
    }
    
    // http 헤더
    var headers: [String : String]? {
        return [
            "content-type": "application/json"
        ]
    }
}
```

- **enum으로 BithumbAPI를 관리 → 어떤 통신을 할 지 종류를 나누는 것**
- 열거형을 extension하여 위에서 정의한 BaseTargetType을 채택

### Service

```swift
final class BithumbService {
    
    static let shared = BithumbService()
    
    private var bithumbProvider = MoyaProvider<BithumbAPI>()

    
     public func getBithumbs(orderCurrency: String, paymentCurrency: String, completion: @escaping (NetworkResult<Any>) -> Void) {
        
        bithumbProvider.request(.getData(orderCurrency: orderCurrency, paymentCurrency: paymentCurrency)) { result in
            switch result {
            case.success(let response):
                let statusCode = response.statusCode
                let data = response.data
                
                let networkResult = self.judgeStatus(by: statusCode, data)
                completion(networkResult)
                
            case.failure(let error):
                print(error)
            }
        }
    }
    
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200:
            return isValidData(data: data)
        case 400..<500:
            return .pathErr
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
    
    private func isValidData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(coinResponse.self, from: data) else {
            return .pathErr}
        
        return .success(decodedData.data)
        }
    }
```

- `MoyaProvider`를 통해서 서버 통신 → Type Safe
- 또한, 프로토콜(TargetType)을 채택해서 통신을 하고 있기 때문에 필요한 요소를 빼먹을 일이 없음
- `judgeStatus`를 통해 각 상황에 맞는 값으로 반환 (**Alamofire 방식을 섞어봄)**

### NetworkResult

```swift
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
```

NetworkResult을 enum화

