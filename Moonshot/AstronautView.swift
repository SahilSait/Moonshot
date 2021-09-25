//
//  AstronautView.swift
//  Moonshot
//
//  Created by Sahil Sait on 21/09/21.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        GeometryReader(content: { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)
                    
                    Text(astronaut.description)
                        .padding()
                    
                    Text("Missions")
                        .font(.headline)
                        .padding()
                    
//                    ForEach(missions, id: \.id, content: {mission in
//                        Text(mission.displayName)
//                    })
                }
            }
            .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
        })
    }
}

struct AstronautView_Previews: PreviewProvider {
    
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
