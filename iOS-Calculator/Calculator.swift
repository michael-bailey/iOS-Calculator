//
//  Calculator.swift
//  iOS-Calculator
//
//  Created by michael bailey on 02/10/2020.
//

import Foundation

public class Calculator: ObservableObject {
	
	@Published var stack: [CalcItem]
	
	init() {
		self.stack = [CalcItem]()
	}
	
	func push(item: CalcItem) {
		self.stack.append(item)
	}
	
	func pop() -> CalcItem? {
		return self.stack.popLast()
	}
}
