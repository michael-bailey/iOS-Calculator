//
//  ContentView.swift
//  iOS-Calculator
//
//  Created by michael bailey on 02/10/2020.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var calculator: Calculator = Calculator()
	@State var currentString = ""
	
	let buttonPadding: CGFloat = 20.0
	
    var body: some View {
		VStack(alignment: .center) {
			List(calculator.stack) { item in
				Text(item.text)
			}
			Text(currentString)
			HStack(alignment: .center) {
				VStack {
					Button(action: { calculator.push(item: CalcItem(type: .number, value: 7.0))}) {
						Text("7").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("4").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("1").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("±").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
				}.background(Color.green)
				VStack {
					Button(action: {}) {
						Text("8").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("5").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("2").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("0").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
				}.background(Color.green)
				VStack {
					Button(action: {}) {
						Text("9").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("6").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("3").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text(".").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
				}.background(Color.green)
				VStack {
					Button(action: {}) {
						Text("/").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("*").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("-").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
					Button(action: {}) {
						Text("+").background(Color.yellow).padding(.all, self.buttonPadding).font(.title)
					}
				}.background(Color.green)
			}
			.frame(height: 375)
			.background(Color.blue)
		}.background(Color.red)
		
		.toolbar {
			Button("=") {}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
