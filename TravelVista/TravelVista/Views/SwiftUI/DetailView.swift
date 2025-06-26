//
//  DetailView.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable { //vue swift qui crée une instance de DetailViewController (UIKit)
	let country: Country
	
	func makeUIViewController(context: Context)  ->  DetailViewController {
		guard let detailViewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { //crée nvelle instance de DetailViewController via son identifiant dans le storyboard puis on caste en DetailViewController pour utiliser sa propriété country
			fatalError("Impossible d'instancier DetailViewController depuis le storyboard")
		}
		detailViewController.country = country
		
		return detailViewController
	}
	
	func updateUIViewController(_ viewController: DetailViewController, context: Context) { //maj l’interface de la vue lorsque l’on a un affichage dynamique (valeurs changeantes): ici valeurs statiques donc inutile de remplir la fonction
		
	}
}
	
