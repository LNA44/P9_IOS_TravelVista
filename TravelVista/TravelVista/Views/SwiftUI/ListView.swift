//
//  ListView.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct ListView: View {
	let viewModel = ListViewModel()
	
	var body: some View {
		NavigationStack {
			VStack (spacing: 30){
				Text("Liste de voyages")
					.font(.headline)
				List {
					ForEach(viewModel.regions, id: \.name) { region in
						Section {
							ForEach(region.countries, id: \.name) { country in
								ZStack {
									CustomCellSwiftUI(country: country)
										.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
									NavigationLink(destination: DetailView(country: country)) {
									}.opacity(0)
								}
							}
						} header: {
							Text(region.name)
								.textCase(.none)
								.bold()
								.font(.system(size: 15))
							
						}
					}
				}
			}
		}
	}
}

#Preview {
	ListView()
}

