//
//  Heart.swift
//  Movies
//
//  Created by Matteo Manferdini on 11/05/2020.
//  Copyright © 2020 Matteo Manferdini. All rights reserved.
//

import SwiftUI

struct Heart: View {
	let isFilled: Bool;
	
	var body: some View {
		Image(systemName: isFilled ? "heart.fill" : "heart")
			.foregroundColor(isFilled ? .red : .secondary)
	}
}

struct HeartSymbol_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			Heart(isFilled: true)
			Heart(isFilled: false)
		}
		.padding()
		.previewLayout(.sizeThatFits)
	}
}

