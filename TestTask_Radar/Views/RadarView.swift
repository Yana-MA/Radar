//
//  RadarView.swift
//  TestTask_Radar
//
//  Created by Yana on 5/5/22.
//

import SwiftUI

struct RadarView: View {
	let levelCount = Radar.shared.levels

	// distance between levels
	var step: CGFloat { return (screenWidth - 10)/CGFloat(levelCount) }

	var screenWidth: CGFloat { return UIScreen.main.bounds.width }

	var body: some View {
		ZStack {
			ForEach((1...levelCount).reversed(), id: \.self) { level in
				VStack {
					GeometryReader { geometry in
						LevelView(radius: geometry.size.width / 2, step: step, planeCount: Radar.shared.getPlanesForLevel(level))
					}
				}
				.frame(
					width: step * CGFloat(level),
					height: step * CGFloat(level),
					alignment: .center)
			}
		}
	}
}

struct RadarView_Previews: PreviewProvider {
    static var previews: some View {
        RadarView()
    }
}
