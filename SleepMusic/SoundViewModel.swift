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
        Sounds(title: "Meditation", track: "Meditation", smallImage: "Meditation", largeImage: "Meditation"),
        Sounds(title: "Wind Chimes", track: "WindChimes", smallImage: "WindChimes", largeImage: "WindChimes"),
        Sounds(title: "Zen Gong", track: "ZenGong", smallImage: "ZenGong", largeImage: "ZenGong"),
        Sounds(title: "Campfire", track: "Fire", smallImage: "CampfireSmall", largeImage: "CampfireLarge"),
        Sounds(title: "Raining", track: "Rain", smallImage: "Rain", largeImage: "Rain"),
        Sounds(title: "Thunder", track: "Thunder", smallImage: "ThunderSmall", largeImage: "ThunderLarge"),
        Sounds(title: "Beach", track: "Beach", smallImage: "BeachSmall", largeImage: "BeachLarge"),
        Sounds(title: "Underwater", track: "Underwater", smallImage: "Underwater", largeImage: "Underwater"),
    ]
}

extension Sounds {
    static let meditation = [
//        Sounds(title: "Meditation", track: "Meditation", smallImage: "Meditation", largeImage: "Meditation"),
//        Sounds(title: "Wind Chimes", track: "WindChimes", smallImage: "WindChimes", largeImage: "WindChimes"),
//        Sounds(title: "Zen Gong", track: "ZenGong", smallImage: "ZenGong", largeImage: "ZenGong"),
        Sounds(title: "Campfire", track: "Fire", smallImage: "CampfireSmall", largeImage: "CampfireLarge"),
        Sounds(title: "Raining", track: "Rain", smallImage: "Rain", largeImage: "Rain"),
        Sounds(title: "Thunder", track: "Thunder", smallImage: "ThunderSmall", largeImage: "ThunderLarge"),
        Sounds(title: "Beach", track: "Beach", smallImage: "BeachSmall", largeImage: "BeachLarge"),
    ]
}

extension Sounds {
    static let images = [
                Sounds(title: "Meditation", track: "Meditation", smallImage: "Meditation", largeImage: "Meditation"),
                Sounds(title: "Wind Chimes", track: "WindChimes", smallImage: "WindChimes", largeImage: "WindChimes"),
                Sounds(title: "Zen Gong", track: "ZenGong", smallImage: "ZenGong", largeImage: "ZenGong"),
                Sounds(title: "Campfire", track: "Fire", smallImage: "CampfireSmall", largeImage: "CampfireLarge"),
                Sounds(title: "Raining", track: "Rain", smallImage: "Rain", largeImage: "Rain"),
                Sounds(title: "Thunder", track: "Thunder", smallImage: "ThunderSmall", largeImage: "ThunderLarge"),
                Sounds(title: "Beach", track: "Beach", smallImage: "BeachSmall", largeImage: "BeachLarge"),
    ]
}
