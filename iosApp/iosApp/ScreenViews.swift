//
//  ViewsDefinition.swift
//
//  Created by Daniele Baroncelli on 13/03/2021.
//
//

import SwiftUI
import shared

extension DKMPNavigation {
    @ViewBuilder func getViewInstance(_ screen: Screen, _ instanceId: String?) -> some View {
        switch screen {
        case Screen.countrieslist:
            CountriesListScreen(destinationScreen: Screen.countrydetail)
        case Screen.countrydetail:
            CountryDetailScreen(countryName: instanceId!)
        default:
            EmptyView()
        }
    }
}