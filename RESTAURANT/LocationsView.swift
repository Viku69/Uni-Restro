//
//  LocationsView.swift
//  Uni Restro
//
//  Created by Vikram Singh on 26/10/23.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
       @State private var displayingReservationForm = false
       var body: some View {
           VStack {
              Image(systemName: "triangle")
                   .resizable()
                   .frame(width: 40, height:40)
                   .padding(.top , 40)
                   .foregroundStyle(.indigo)
             Text("Uni Restro")
                   .padding(.vertical)
                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                   
               
               Spacer()
               
               if displayingReservationForm {
                   Text("Reservation Details")
                       .padding([.leading, .trailing], 40)
                       .padding([.top, .bottom], 8)
                       .background(Color.gray.opacity(0.2))
                       .cornerRadius(20)
                           }
               else {
                   Text("Select a location")
                       .padding([.leading, .trailing], 40)
                       .padding([.top, .bottom], 8)
                       .background(Color.gray.opacity(0.2))
                       .cornerRadius(20)
                   }
           
               
               NavigationView {
                          List(model.restaurants, id: \.self) { restaurant in
                              NavigationLink(destination: ReservationForm(restaurant )) {
                                  RestaurantView(restaurant)
                              }
                          }
                          .navigationBarTitle("")
                          .navigationBarHidden(true)
                      }
               
               .onDisappear{
                              if model.tabBarChanged { return }
                              model.displayingReservationForm = true
                          }
               .padding(.top, -10)
                           
               .scrollContentBackground(.hidden)
           }
           .padding(.top, -10)
       }
}

#Preview {
    LocationsView().environmentObject(Model())
}
