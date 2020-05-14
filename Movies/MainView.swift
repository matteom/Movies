//
//  MainView.swift
//  Movies
//
//  Created by Matteo Manferdini on 24/04/2020.
//  Copyright © 2020 Matteo Manferdini. All rights reserved.
//

import SwiftUI

struct MainView: View {
	@State var movies: [Movie] = TestData.movies
    
	var body: some View {
		TabView {
			NavigationView {
				MoviesView(movies: $movies, showOnlyFavorites: false)
			}
			.tabItem {
				Image(systemName: "list.bullet")
					.font(.system(size: 26))
				Text("All movies")
			}
			NavigationView {
				MoviesView(movies: $movies, showOnlyFavorites: true)
			}
			.tabItem {
				Image(systemName: "heart")
					.font(.system(size: 26))
				Text("Favorites")
			}
		}
	}
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
