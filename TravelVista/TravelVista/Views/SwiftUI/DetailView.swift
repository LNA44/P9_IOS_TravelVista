//
//  DetailView.swift
//  TravelVista
//
//  Created by Ordinateur elena on 26/06/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable { //simule une vue de type SwiftUI
	let country: Country
	
	func makeUIViewController(context: Context)  ->  DetailViewController {//récupère DetailViewController
		guard let detailViewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { //crée nvelle instance de DetailViewController via son identifiant dans le storyboard puis on caste en DetailViewController (sinon son type serait UIViewController, c'est général) pour utiliser sa propriété country
			fatalError("Impossible d'instancier DetailViewController depuis le storyboard")
		}
		detailViewController.country = country
		
		return detailViewController
	}
	
	func updateUIViewController(_ viewController: DetailViewController, context: Context) { //maj l’interface de la vue lorsque l’on a un affichage dynamique (valeurs changeantes): ici valeurs statiques donc inutile de remplir la fonction
		
	}
}

