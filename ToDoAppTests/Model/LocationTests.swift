//
//  LocationTests.swift
//  ToDoAppTests
//
//  Created by Леся on 31.08.2021.
//

import XCTest
import CoreLocation
@testable import ToDoApp


class LocationTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {
        
    }
    
    func testInitSetsName() {
        let location = Location(name: "Foo")
        XCTAssertEqual(location.name, "Foo")
    }
    
    func testInitSetsCoordinates() {
        let coordinate = CLLocationCoordinate2D(
            latitude: 1,
            longitude: 2
        )
        let location = Location(name: "Foo",
                                coordinate: coordinate)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
        
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
    }
}
