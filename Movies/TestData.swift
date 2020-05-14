//
//  TestData.swift
//  Movies
//
//  Created by Matteo Manferdini on 24/04/2020.
//  Copyright © 2020 Matteo Manferdini. All rights reserved.
//

import Foundation
import UIKit

struct TestData {
	static var movies: [Movie] = {
		let url = Bundle.main.url(forResource: "Movies", withExtension: "json")!
		let data = try! Data(contentsOf: url)
		let decoder = JSONDecoder()
		return try! decoder.decode([Movie].self, from: data)
	}()
}
