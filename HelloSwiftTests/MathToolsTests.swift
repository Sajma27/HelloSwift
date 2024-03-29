/*
* MathToolsTests.swift
* Created by Kajetan Dąbrowski on 12/11/2019.
*
* iOS 4 Beginners 2019
* Copyright 2019 DaftMobile Sp. z o. o.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*    http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or  * implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import XCTest
@testable import HelloSwift

class MathToolsTests: XCTestCase {

    var mathTools: MathTools!

    override func setUp() {
        super.setUp()
        mathTools = MathTools()
    }

    override func tearDown() {
        mathTools = nil
        super.tearDown()
    }

    func testFibonacci0() {
        XCTAssertEqual(mathTools.fibonacci(0), 0)
    }

    func testFibonacci1() {
        XCTAssertEqual(mathTools.fibonacci(1), 1)
    }

    func testFibonacci2() {
        XCTAssertEqual(mathTools.fibonacci(2), 1)
    }

    func testFibonacci3() {
        XCTAssertEqual(mathTools.fibonacci(3), 2)
    }

    func testFibonacci4() {
        XCTAssertEqual(mathTools.fibonacci(4), 3)
    }

    func testFibonacci5() {
        XCTAssertEqual(mathTools.fibonacci(5), 5)
    }

    func testFibonacci6() {
        XCTAssertEqual(mathTools.fibonacci(6), 8)
    }

    func testFibonacci7() {
        XCTAssertEqual(mathTools.fibonacci(7), 13)
    }

    func testFibonacci10() {
        XCTAssertEqual(mathTools.fibonacci(10), 55)
    }

    func testFibonacci20() {
        XCTAssertEqual(mathTools.fibonacci(20), 6765)
    }

    func testPerformanceExample() {
        self.measure {
            for _ in 0..<10 { _ = mathTools.fibonacci(32) }
        }
    }
}
