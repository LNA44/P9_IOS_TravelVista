//
//  CustomCellSwiftUI.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct CustomCellSwiftUI: View {
	let country: Country
    var body: some View {
		HStack {
			Image(country.pictureName)
				.resizable()
				.scaledToFill()
				.frame(width: 52, height: 52)
				.clipShape(Circle())
			VStack(alignment: .leading) {
				Text(country.name)
					.foregroundColor(Color("CustomBlue"))
					.font(.system(size: 20))
				Text(country.capital)
					.foregroundColor(.black)
					.font(.system(size: 16))
			}
			Spacer()
			HStack (spacing: 10){
				Text("\(country.rate)")
					.font(.system(size: 16))
				Image(systemName: "star.fill")
					.resizable()
					.frame(width: 30, height: 30)
					.foregroundColor(Color("CustomSand"))
			}
		}
		.padding(.leading, 25)
		.padding(.trailing, 25)
		.padding(.bottom, 5)
		.padding(.top, 5)
    }
}

#Preview {
	CustomCellSwiftUI(country: Country(name: "Norvège", capital: "Oslo", description: "La Norvège, officiellement le Royaume de Norvège, est un pays nordique d'Europe du Nord dont le territoire principal comprend la partie ouest et la plus septentrionale de la péninsule scandinave.", rate: 4, pictureName: "norvege", coordinates: Coordinates(latitude: 59.9139, longitude: 10.7522)))
}
