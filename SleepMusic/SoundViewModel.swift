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
}

extension Sounds {
    static let sounds = [
        Sounds(title: "Meditation Sounds", track: "Meditation", smallImage: "Meditation", largeImage: "Meditation"),
        Sounds(title: "Wind Chimes Sounds", track: "WindChimes", smallImage: "WindChimes", largeImage: "WindChimes"),
        Sounds(title: "Zen Gong Sounds", track: "ZenGong", smallImage: "ZenGong", largeImage: "ZenGong"),
        Sounds(title: "Campfire Sounds", track: "Fire", smallImage: "CampfireSmall", largeImage: "CampfireLarge"),
        Sounds(title: "Raining Sounds", track: "Rain", smallImage: "Rain", largeImage: "Rain"),
        Sounds(title: "Thunder Sounds", track: "Thunder", smallImage: "ThunderSmall", largeImage: "ThunderLarge"),
        Sounds(title: "Beach Sounds", track: "Beach", smallImage: "BeachSmall", largeImage: "BeachLarge"),
    ]
}

