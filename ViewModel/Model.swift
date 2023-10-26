//
//  Model.swift
//  Uni Restro
//
//  Created by Vikram Singh on 26/10/23.
//

import Foundation

class Model:ObservableObject {
  let restaurants = [
    RestaurantLocation(city: "Noida",
                       neighborhood: "Sec-18",
                       phoneNumber: "(91) 9999988888"),
    RestaurantLocation(city: "Noida",
                       neighborhood: "Sec-104",
                       phoneNumber: "(91) 9999988886"),
    RestaurantLocation(city: "Gr. Noida",
                       neighborhood: "Venice",
                       phoneNumber: "(91) 9999988885"),
    RestaurantLocation(city: "New Delhi",
                       neighborhood: "Saket",
                       phoneNumber: "(91) 9999988884"),
    RestaurantLocation(city: "Gurugram",
                       neighborhood: "CyberCity",
                       phoneNumber: "(91) 9999988881"),
    RestaurantLocation(city: "Ghaziabad",
                       neighborhood: "Rdc Extension",
                       phoneNumber: "(91) 9999988882")
  ]
  
  @Published var reservation = Reservation()
  @Published var displayingReservationForm = false
  @Published var temporaryReservation = Reservation()
  @Published var followNavitationLink = false
  
  @Published var displayTabBar = true
  @Published var tabBarChanged = false
  @Published var tabViewSelectedIndex = Int.max {
    didSet {
      tabBarChanged = true
    }
  }
}
