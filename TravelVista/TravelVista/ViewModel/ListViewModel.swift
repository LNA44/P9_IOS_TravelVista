//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import Foundation

struct ListViewModel {
	// Charge les régions depuis Source.json
	let regions: [Region] = Service().load("Source.json")
}
