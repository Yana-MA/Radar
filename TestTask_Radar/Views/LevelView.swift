//
//  LevelView.swift
//  TestTask_Radar
//
//  Created by Yana on 5/5/22.
//

import SwiftUI

struct LevelView: View {
	let radius: CGFloat
	let step: CGFloat
	let planeCount: Int

	var body: some View {
		ZStack {
			Circle()
				.strokeBorder(Color.black, lineWidth: 1)

			//put planes to a level
			ForEach((0...self.planeCount), id: \.self) { _ in
				PlaneView(step: step)
					.position(getRandomPointOnCircle(radius: radius))
			}
		}
	}

	func getRandomPointOnCircle(radius: CGFloat) -> CGPoint {
		let angle = CGFloat.random(in: 0..<361)
		let x = (radius - step/4) * cos(angle) + radius
		let y = (radius - step/4) * sin(angle) + radius
		return CGPoint(x: x, y: y)
	}
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(radius: 100, step: 10, planeCount: 5)
    }
}
