// h3.swift
//
// Created by Michael Chartier on 11/2/2020
// Copyright Â© Michael Chartier. All rights reserved.

import Foundation
import CoreLocation


extension CLLocationCoordinate2D {
    // Find the H3 cell index for a given set of 2D coordinates
    public func h3CellIndex( resolution: Int32 ) -> UInt64 {
        let lat = degsToRads(latitude)
        let lon = degsToRads(longitude)
        var location = LatLng(lat: lat, lng: lon)
        var index: UInt64 = 0
        latLngToCell(&location, 4, &index)
        return index
    }
    // Find the neighbor cells for a given set of 2D coordinates and ring size
    public func h3Neighbors(resolution: Int32, ringLevel: Int32 ) -> [H3Index]
    {
        let index = h3CellIndex(resolution: resolution)
        var count: Int64 = 0
        maxGridDiskSize(ringLevel, &count)
        var neighbors = Array(repeating: H3Index(), count: Int(count))
        gridDisk(index, ringLevel, &neighbors);
        return neighbors
    }
}


