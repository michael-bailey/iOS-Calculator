//
//  iOS_CalculatorTests.swift
//  iOS-CalculatorTests
//
//  Created by michael bailey on 04/10/2020.
//

import XCTest
@testable import iOS_Calculator

class CalcItemTests: XCTestCase {
	func testNumber() {
		let one = Number()
	}
	
	func testBasicOperations() {
		<#statements#>
	}
}

class ClculatorTests: XCTestCase {
	
	func testPushOnToStack() {
		let calc = Calculator()
		let item1 = CalcItem(type: .number, value: 1.0)
		calc.push(item: item1)
		
		XCTAssertEqual(calc.stack[0], item1)
	}
	
	func testPopOfStack() {
		let calc = Calculator()
		let item1 = CalcItem(type: .number, value: 1.0)
		calc.push(item: item1)
		
		let item2 = calc.pop()
		
		XCTAssertEqual(item2, item1)
	}
	
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
