//
//  PlaneView.swift
//  TestTask_Radar
//
//  Created by Yana on 5/5/22.
//

import SwiftUI

struct PlaneView: View {
	var step: CGFloat
	var planeWidth: CGFloat { step * 0.4 }

	var body: some View {
		Image("plane")
			.resizable()
			.aspectRatio(contentMode: .fit)
			.frame(width: planeWidth)
	}
}

struct PlaneView_Previews: PreviewProvider {
    static var previews: some View {
		PlaneView(step: 100)
    }
}
