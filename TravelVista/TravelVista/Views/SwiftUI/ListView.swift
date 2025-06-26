//
//  ListView.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct ListView: View {
	let regions: [Region]
	var body: some View {
		VStack (spacing: 30){
			Text("Liste de voyages")
				.font(.headline)
			List {
				ForEach(regions, id: \.name) { region in
					Section {
						ForEach(region.countries, id: \.name) { country in
							CustomCellSwiftUI(country: country)
								.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
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

#Preview {
	ListView(regions: [Region(name: "Europe", countries:
								[Country(name: "Norvège", capital: "Oslo", description: "La Norvège, officiellement le Royaume de Norvège, est un pays nordique d'Europe du Nord dont le territoire principal comprend la partie ouest et la plus septentrionale de la péninsule scandinave.", rate: 4, pictureName: "norvege", coordinates: Coordinates(latitude: 59.9139, longitude: 10.7522)),
								 Country(name: "Italie", capital: "Rome", description: "L'Italie, officiellement la République italienne, est un pays d'Europe du Sud.", rate: 5, pictureName: "italie", coordinates: Coordinates(latitude: 59.9139, longitude: 10.7522))
								]),
					   Region(name: "Asie", countries:
								[Country(name: "Vietnam", capital: "Hanoi", description: "Officiellement la République socialiste du Vietnam, est un pays d'Asie du Sud-Est et le pays le plus à l'est de la péninsule indochinoise.", rate: 2, pictureName: "vietnam", coordinates: Coordinates(latitude: 59.9139, longitude: 10.7522))])])
}

