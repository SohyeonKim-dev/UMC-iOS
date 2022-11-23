//
//  MoonAPIManager.swift
//  Week9
//
//  Created by 김소현 on 2022/11/23.
//

import Foundation
import Alamofire
import SwiftyJSON

func getMoonDate() {
    let url = "http://apis.data.go.kr/B090041/openapi/service/LunPhInfoService/getLunPhInfo"
    let headers : HTTPHeaders = ["content-type": "application/json"]
    let parameters: Parameters = [
           "serviceKey": "서비스 키 입력하세요",
           "solYear": "2022",
           "solMonth": "11",
           "solDay": "23"
           ]
    
    AF.request(url, encoding: JSONEncoding.default, headers: nil).response {
        response in
        
        switch response.result {
        case .success(let value):
            let json = JSON(value)
            let result = json["result"].intValue
//            print(json)
            print(result)
        default:
            print(response.result)
            return
        }
    }
}
