 //
 //  MusicVideo.swift
 //  MusicVideo
 //
 //  Created by Tuan-Vi Phan on 3/25/16.
 //  Copyright © 2016 Tuan-Vi Phan. All rights reserved.
 //
 
 import Foundation
 
 class Videos {
    
    var vRank = 0
    // Data Encapsulation
    private var _vName: String
    private var _vRights: String
    private var _vPrice: String
    private var _vImageUrl: String
    private var _vArtist: String
    private var _vVideoUrl: String
    private var _vImid: String
    private var _vGenre: String
    private var _vLinkToiTunes: String
    private var _vReleaseDate: String
    
    // This variable gets created from the UI
    var vImageData: NSData?
    
    // Make a getter
    var vName: String {
        return _vName
    }
    
    var vRights: String {
        return _vRights
    }
    
    var vPrice: String {
        return _vPrice
    }
    
    var vImageUrl: String {
        return _vImageUrl
    }
    
    var vArtist: String {
        return _vArtist
    }
    
    var vVideoUrl: String {
        return _vVideoUrl
    }
    
    var vImid: String {
        return _vImid
    }
    
    var vGenre: String {
        return _vGenre
    }
    
    var vLinkToiTunes: String {
        return _vLinkToiTunes
    }
    
    var vReleaseDate: String {
        return _vReleaseDate
    }
    
    init(data: JSONDictionary) {
        
        // Video name
        if let nameDict = data["im:name"] as? JSONDictionary, vName = nameDict["label"] as? String {
            self._vName = vName
        } else {
            _vName = ""
        }
        
        // The Studio Name
        if let rightsDict = data["rights"] as? JSONDictionary, vRights = rightsDict["label"] as? String {
            self._vRights = vRights
        } else {
            _vRights = ""
        }
        
        // Price of Video
        if let priceDict = data["im:price"] as? JSONDictionary, vPrice = priceDict["label"] as? String {
            self._vPrice = vPrice
        } else {
            _vPrice = ""
        }
        
        // The Video Image
        if let imageArr = data["im:image"] as? JSONArray, imageDict = imageArr[2] as? JSONDictionary, immage = imageDict["label"] as? String {
            _vImageUrl = immage.stringByReplacingOccurrencesOfString("100x100", withString: "600x600")
        } else {
            _vImageUrl = ""
        }
        
        // The Artist Name
        if let artistDict = data["im:artist"] as? JSONDictionary, vArtist = artistDict["label"] as? String {
            self._vArtist = vArtist
        } else {
            _vArtist = ""
        }
        
        // Video Url
        if let videoArr = data["link"] as? JSONArray, videoDict = videoArr[1] as? JSONDictionary, vHref = videoDict["attributes"] as? JSONDictionary, vVideoUrl = vHref["href"] as? String {
            self._vVideoUrl = vVideoUrl
        } else {
            _vVideoUrl = ""
        }
        
        // Id
        if let idArr = data["id"] as? JSONArray, idDict = idArr[1] as? JSONDictionary, vImid = idDict["im:id"] as? String {
            self._vImid = vImid
        } else {
            _vImid = ""
        }
        
        // Genre
        if let category = data["category"] as? JSONDictionary, genre = category["attributes"] as? JSONDictionary, vGenre = genre["term"] as? String {
            self._vGenre = vGenre
        } else {
            _vGenre = ""
        }
        
        // Video Link to iTunes
        if let linkiTunes = data["id"] as? JSONDictionary, vLinkToiTunes = linkiTunes["href"] as? String {
            self._vLinkToiTunes = vLinkToiTunes
        } else {
            _vLinkToiTunes = ""
        }
        
        // The Release Date
        if let releaseDict = data["im:releaseDate"] as? JSONDictionary, rel2 = releaseDict["attributes"] as? JSONDictionary,vReleaseDate = rel2["label"] as? String {
            self._vReleaseDate = vReleaseDate
        } else {
            _vReleaseDate = ""
        }
    }
 }