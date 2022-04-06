    //
    //  SpringData.swift
    //  SpringCocoa
    //
    //  Created by Konstantin Fomenkov on 06.04.2022.
    //

import Spring

class SpringData {
    static let shared = SpringData()

    let presets = Spring.AnimationPreset.allCases.map { "\($0)" }
    let curves = Spring.AnimationCurve.allCases.map { "\($0)" }
    let forces = 0...2.0
    let durations = 0...1.5
    let delays = 0...1.0

    private init() {}
}
