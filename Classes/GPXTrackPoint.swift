//
//  GPXTrackPoint.swift
//  GPXKit
//
//  Created by Vincent on 9/12/18.
//

import Foundation

open class GPXTrackPoint: GPXWaypoint {
    
    public required init() {
        super.init()
    }
    
    // MARK:- Instance
    
    public override init(latitude: Double, longitude: Double) {
        super.init()
        self.latitude = latitude
        self.longitude = longitude
    }
    
    override init(dictionary: [String : String]) {
        super.init()
        self.time = ISO8601DateParser.parse(dictionary ["time"])
        self.elevation = Convert.toDouble(from: dictionary["ele"])
        self.latitude = Convert.toDouble(from: dictionary["lat"])
        self.longitude = Convert.toDouble(from: dictionary["lon"])
        self.magneticVariation = Convert.toDouble(from: dictionary["magvar"])
        self.geoidHeight = Convert.toDouble(from: dictionary["geoidheight"])
        self.name = dictionary["name"]
        self.comment = dictionary["cmt"]
        self.desc = dictionary["desc"]
        self.source = dictionary["src"]
        self.symbol = dictionary["sym"]
        self.type = dictionary["type"]
        self.fix = Convert.toInt(from: dictionary["fix"])
        self.satellites = Convert.toInt(from: dictionary["sat"])
        self.horizontalDilution = Convert.toDouble(from: dictionary["hdop"])
        self.verticalDilution = Convert.toDouble(from: dictionary["vdop"])
        self.positionDilution = Convert.toDouble(from: dictionary["pdop"])
        self.DGPSid = Convert.toInt(from: dictionary["dgpsid"])
        self.ageofDGPSData = Convert.toDouble(from: dictionary["ageofdgpsdata"])
    }
    
    // MARK:- Tag
    
    override func tagName() -> String {
        return "trkpt"
    }
    
}
