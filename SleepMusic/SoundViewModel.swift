//
//  SoundViewModel.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import Foundation

struct Sounds {
    let id = UUID()
    let title: String
    let track: String
    let smallImage:String
    let largeImage: String
    let view: Int
    }

extension Sounds {
    static let sounds = [
        Sounds(title: "Meditation Sounds", track: "Meditation", smallImage: "Meditation", largeImage: "Meditation", view: 0),
        Sounds(title: "Campfire Sounds", track: "Fire", smallImage: "CampfireSmall", largeImage: "CampfireLarge", view: 1),
        Sounds(title: "Raining Sounds", track: "Rain", smallImage: "Rain", largeImage: "Rain", view: 2),
        Sounds(title: "Thunder Sounds", track: "Thunder", smallImage: "ThunderSmall", largeImage: "ThunderLarge", view: 3),
        Sounds(title: "Beach Sounds", track: "Beach", smallImage: "BeachSmall", largeImage: "BeachLarge", view: 4)
    ]
}

