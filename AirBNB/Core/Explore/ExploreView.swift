//
//  ExploreView.swift
//  AirBNB
//
//  Created by Darkwa John on 16/11/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:32){
                    ForEach(0...10, id: \.self){ listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                    }
                }
            }
            .padding()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
