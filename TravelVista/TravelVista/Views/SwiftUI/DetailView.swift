//
//  DetailView.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable {
	let country: Country
	
	func makeUIViewController(context: Context)  ->  DetailViewController {
		guard let detailViewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
			fatalError("Impossible d'instancier DetailViewController depuis le storyboard")
		}
		detailViewController.country = country
		
		return detailViewController
	}
	
	func updateUIViewController(_ viewController: DetailViewController, context: Context) {
	}
}

