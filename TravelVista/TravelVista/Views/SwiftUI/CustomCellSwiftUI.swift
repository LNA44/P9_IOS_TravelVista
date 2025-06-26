//
//  CustomCellSwiftUI.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct CustomCellSwiftUI: View {
    var body: some View {
		HStack {
			Image(systemName: "person.circle")
				.resizable()
				.scaledToFill()
				.frame(width: 52, height: 52)
				.clipShape(Circle())
			VStack(alignment: .leading) {
				Text("John Doe")
					.foregroundColor(Color("CustomBlue"))
					.font(.system(size: 24))
				Text("toto")
					.foregroundColor(.black)
					.font(.system(size: 22))
			}
			Spacer()
			HStack (spacing: 10){
				Text("4")
					.font(.system(size: 22))
				Image(systemName: "star.fill")
					.resizable()
					.frame(width: 32, height: 32)
					.foregroundColor(Color("CustomSand"))
			}
		}
		.padding(25)
    }
}

#Preview {
    CustomCellSwiftUI()
}
