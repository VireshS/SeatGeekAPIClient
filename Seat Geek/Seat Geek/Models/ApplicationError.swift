//
//  .swift
//  ImageLoader
//
//  Created by Viresh Singh on 07/02/19.
//  Copyright © 2019 Viresh Singh. All rights reserved.
//

import Foundation
public enum ApplicationErrorType:Int
{
    case NetworkTimeout_1001                               =   -1001
    case NetworkServerNotFound_1003                        =   -1003
    case NetworkConnectionToServerFailed_1004              =   -1004
    case NetworkConnectionToServerLost_1005                =   -1005
    case NetworkInternetNotReachable_1009                  =   -1009
    case Unknown                                           =   99999
    
    static func networkErrorCode()->[ApplicationErrorType]
    {
        return [.NetworkTimeout_1001,.NetworkServerNotFound_1003,.NetworkConnectionToServerFailed_1004,.NetworkConnectionToServerLost_1005,.NetworkInternetNotReachable_1009]
    }
}

class  ApplicationError{
    var errorCode:ApplicationErrorType = .Unknown
    var originalError:Error? = nil
    func displayableErrorMessage()->String
    {
        switch self.errorCode {
        case .NetworkTimeout_1001:
            return "Network Request Timeout"
        case .NetworkInternetNotReachable_1009, .NetworkServerNotFound_1003:
            return "Server not reachable"
        case .NetworkConnectionToServerFailed_1004:
            return "Network Connection Failed"
        case .NetworkConnectionToServerLost_1005:
            return "Network Connection Lost"
        default:
            return "Some Error Occurred"
        }
    }
    
    class func error(with httpCode:Int) -> ApplicationError {
        let error = ApplicationError()
        switch httpCode {
        case -1001:
            error.errorCode = .NetworkTimeout_1001
            break
        case -1003:
            error.errorCode = .NetworkServerNotFound_1003
            break
        case -1004:
            error.errorCode = .NetworkConnectionToServerFailed_1004
            break
        case -1005:
            error.errorCode = .NetworkConnectionToServerLost_1005
            break
        case -1009:
            error.errorCode = .NetworkInternetNotReachable_1009
            break
        default:
            error.errorCode = .Unknown
            break
        }
        return error
    }
    
    func isNetworkError() -> Bool {
        return  ApplicationErrorType.networkErrorCode().contains(self.errorCode)
    }
    
    class func genericError() -> ApplicationError
    {
        return ApplicationError()
    }
    
}

