//
//  AuthManager.swift
//  Spotify Clone
//
//  Created by Vladlens Kukjans on 22/03/2023.
//

import UIKit

final class  AuthManager  {

   static let shared = AuthManager()
    private init() {}
    
    struct Constants {
        static let clientID = "833ad50b4bf2442691c28f3fec7bf15a"
        static let clientSecret = "9ecef578d10a4437b5b625e61674e329"
    }
    
    
    var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        let base = "htpps://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)"
        return URL(string: string)
    }
    
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accesToke: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExparationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    
    
    
    
        
    }
    
