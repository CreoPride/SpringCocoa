//
//  ViewController.swift
//  SpringCocoa
//
//  Created by Konstantin Fomenkov on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!

    var currentAnimation = Animation.getRandomAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimationInfo()
    }

    @IBAction func runAnimation() {
        animationView.animation = currentAnimation.preset
        animationView.curve = currentAnimation.curve
        animationView.force = CGFloat(currentAnimation.force)
        animationView.duration = CGFloat(currentAnimation.duration)
        animationView.delay = CGFloat(currentAnimation.delay)
        animationView.animate()

        showAnimationInfo()
        currentAnimation = .getRandomAnimation()
        buttonLabel.setTitle("Run \(currentAnimation.preset)", for: .normal)
    }
    
    private func showAnimationInfo() {
        presetLabel.text = "preset: \(currentAnimation.preset)"
        curveLabel.text = "curve: \(currentAnimation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", currentAnimation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", currentAnimation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", currentAnimation.delay))"
    }
}

