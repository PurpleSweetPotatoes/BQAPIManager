// *******************************************
//  File Name:      BQRequest+Extension.swift       
//  Author:         MrBai
//  Created Date:   2019/11/12 4:17 PM
//    
//  Copyright © 2019 baiqiang
//  All rights reserved
// *******************************************
    

import Foundation

enum HostType: String {
    case MyServer = "http://47.105.91.34:8080/"
}

extension BQRequest {
    static var hostName: String {
        return HostType.MyServer.rawValue
    }
    
    static func willSendRequest(url: String, params:[String:Any]?, header:[String:String]?) {
        print(" url ==> \(url) \n params ==> \(params) \n header ==> \(header)")
    }
    
    static func receiveResponse(data: Data?) {
        print("接收完成")
    }
}
