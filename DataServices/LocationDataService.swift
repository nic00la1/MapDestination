//
//  LocationDataService.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 28/02/2024.
//

import Foundation
import MapKit

class LocationDataService {
    
    static let locations: [Location] = [
        // MARK: - Colosseum
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
            "rome-colosseum-1",
            "rome-colosseum-2",
            "rome-colosseum-3"
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        
        // MARK: - Pantheon
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and, since AD 609, a Catholic church in Rome, Italy. It was built on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
            "rome-pantheon-1",
            "rome-pantheon-2",
            "rome-pantheon-3"
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        
        // MARK: - Trevi Fountain
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
            "rome-trevifountain-1",
            "rome-trevifountain-2",
            "rome-trevifountain-3"
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        
        // MARK: - Eiffel Tower
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed as the centerpiece of the 1889 World's Fair and was initially criticised by some of France's leading artists and intellectuals for its design, it has become a global cultural icon of France and one of the most recognisable structures in the world.",
            imageNames: [
            "paris-eiffeltower-1",
            "paris-eiffeltower-2"
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        
        // MARK: - Eiffel Tower
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed as the centerpiece of the 1889 World's Fair and was initially criticised by some of France's leading artists and intellectuals for its design, it has become a global cultural icon of France and one of the most recognisable structures in the world.",
            imageNames: [
            "paris-eiffeltower-1",
            "paris-eiffeltower-2"
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
    ]
}
