//
//  StoryboardIdentifiable.swift
//  EventTracker
//
//  Created by Farooque on 05/10/17.
//  Copyright © 2017 riyaz. All rights reserved.
//


import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
