//
//  Radar.swift
//  TestTask_Radar
//
//  Created by Yana on 5/5/22.
//

import Foundation

class Radar {
	let levels: Int = Int.random(in: 1..<21) //can be in range 1...20
	let planes: Int = Int.random(in: 0..<101) //can be in range 0...100

	// key: level number, value: amount of planes on this level
	var planesOnLevel : [Int:Int] = [Int:Int]()

	static var shared = Radar()

	private init() {
		distributePlanes()
	}

	func distributePlanes() {
		//adding keys for each level and 0 planes for each of them
		for levelNumber in (1..<self.levels+1) {
			planesOnLevel[levelNumber] = 0
		}
		//randomly pick a level for each plane
		//updating amount of planes for a level in a dictionary
		for _ in (0..<self.planes) {
			let level = Int.random(in: 1..<self.levels+1)
			planesOnLevel[level] = (planesOnLevel[level] ?? 0) + 1
		}
	}

	func getPlanesForLevel(_ level: Int) -> Int {
		return planesOnLevel[level] ?? 0
	}
}
