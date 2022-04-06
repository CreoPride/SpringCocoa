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

    static func getRandomAnimation() -> Animation {
        let preset = SpringData.shared.presets.randomElement() ?? ""
        let curve = SpringData.shared.curves.randomElement() ?? ""
        let force = Float(Double.random(in: SpringData.shared.forces))
        let duration = Float(Double.random(in: SpringData.shared.durations))
        let delay = Float(Double.random(in: SpringData.shared.delays))

        return Animation(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
    }
}
