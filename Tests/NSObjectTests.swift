//
//  NSObjectTests.swift
//  SwiftExtensionsTests
//
//  Created by Tatsuya Tanaka on 20171213.
//  Copyright © 2017年 tattn. All rights reserved.
//

import XCTest
import SwiftExtensions

class SwiftExtensionsTests: XCTestCase {
    let expectedClassName = "SwiftExtensionsTests"

    func testStaticClassName() {
        XCTAssertEqual(SwiftExtensionsTests.className, expectedClassName)
    }

    func testInstanceClassName() {
        XCTAssertEqual(SwiftExtensionsTests().className, expectedClassName)
    }
}

extension SwiftExtensionsTests {
    func testDescribedProperty() {
        class Foo: NSObject {
            var foo = 1
            let bar = "bar"
        }

        XCTAssertEqual(Foo().describedProperty, "foo: 1\nbar: bar")
    }
}
