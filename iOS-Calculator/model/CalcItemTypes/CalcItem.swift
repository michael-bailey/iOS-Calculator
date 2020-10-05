//
//  CalcItem.swift
//  iOS-Calculator
//
//  Created by michael bailey on 05/10/2020.
//

import Foundation

public protocol CalcItem: Identifiable, Equatable {
	
	//MARK: - init values
	public let id: UUID
	var text: String = "NO TYPE"
	public let value: (Array<CalcItem>) -> Float64
	
	public init() {
		id = UUID()
		
		text = "OVERRIDE INIT"
		value = { (list) -> Float64 in
			return 0.0
		}
	}
	
	// MARK: - operations
	public static func == (lhs: CalcItem, rhs: CalcItem) -> Bool {
		return lhs.id == rhs.id
	}
}
