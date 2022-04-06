//
//  Animation.swift
//  SpringCocoa
//
//  Created by Konstantin Fomenkov on 06.04.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float

    func getAnimation() -> Animation {
        let preset = SpringData.shared.presets.randomElement() ?? ""
        let curve = SpringData.shared.curves.randomElement() ?? ""
        let force = Float.random(in: 1...5)
        let duration = Float.random(in: 0...1.5)
        let delay = Float.random(in: 0...1)

        let animation = Animation(preset: preset, curve: curve, force: force, duration: duration, delay: delay)

        return animation
    }
}
