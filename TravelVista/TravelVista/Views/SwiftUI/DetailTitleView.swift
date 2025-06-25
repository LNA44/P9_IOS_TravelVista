//
//  DetailTitleView.swift
//  TravelVista
//
//  Created by Ordinateur elena on 25/06/2025.
//

import SwiftUI

struct DetailTitleView: View {
	let country: Country
	
    var body: some View {
		HStack {
			VStack (alignment: .leading){
				Text(country.name)
					.foregroundColor(Color("CustomBlue"))
					.font(.system(size: 22))
					.bold()
				Text(country.capital)
					.foregroundColor(.black)
					.fontWeight(.light)
			}
			Spacer()
			HStack (spacing: 1){
				ForEach(0..<country.rate, id: \.self) { _ in
					Image(systemName: "star.fill")
						.resizable()
						.frame(width: 19, height: 19)
						.foregroundColor(Color("CustomSand"))
				}
			}
		}
		.padding(20)
    }
}

#Preview {
	DetailTitleView(country: Country.init(name: "Norvège", capital: "Oslo", description: "La Norvège, officiellement le Royaume de Norvège, est un pays nordique d'Europe du Nord", rate: 4, pictureName: "norvege", coordinates: Coordinates(latitude: 59.9139,longitude: 10.7522)))
}
