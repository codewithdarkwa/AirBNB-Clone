//
//  ListingView.swift
//  AirBNB
//
//  Created by Darkwa John on 16/11/2023.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack (spacing: 8){
            //Images
            TabView{
                ForEach(0...3, id:\.self){
                    image in Rectangle()
                }
            }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            //listing details
            
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundColor(.gray)
                    Text("Nov 3, - 10")
                    HStack{
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                Spacer()
                
                //Rating
                HStack (spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
