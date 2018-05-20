import Foundation
import SpriteKit
import SceneKit
public class Data {
    

    static var score: Int = 0 
    static var highScore: Int = 0
    static let maxFootball = 10

    var currentTarget = [SCNNode]()
    var ballNodes = [SCNNode]()
    var targetCount: Int = 0
    lazy var moveToSound: SCNAudioSource = {
        let source = SCNAudioSource(fileNamed: "Sounds/move.wav")!
        source.isPositional = false
        source.volume = 0.3
        return source
    }()
    lazy var endSound: SCNAudioSource = {
        let source = SCNAudioSource(fileNamed: "Sounds/end.wav")!
        source.isPositional = false
        source.volume = 0.6
        return source
    }()
    lazy var targetHit: SCNAudioSource = {
        let source = SCNAudioSource(fileNamed: "Sounds/targetHit.wav")!
        source.isPositional = true
        source.volume = 0.8
        return source
    }()
    lazy var postHit: SCNAudioSource = {
        let source = SCNAudioSource(fileNamed: "Sounds/postHit.wav")!
        source.isPositional = true
        source.volume = 0.6
        return source
    }()
    lazy var wallHit: SCNAudioSource = {
        let source = SCNAudioSource(fileNamed: "Sounds/wallHit.wav")!
        source.isPositional = true
        source.volume = 0.3
        return source
    }()
    public static func randomY() -> Float{
        let a = arc4random_uniform(3)
        let b = Float(drand48())
        var r = Float(a) + b + 1.2
        if r > 2.4 {
            r = 2.4
        }
        return r
    }
    
    public static func randomX() -> Float{
        let a = arc4random_uniform(6)
        let b = Float(drand48())
        var r = Float(a) + b
        if r > 5.8 {
            r = 5.8
        }
        return r-2.9
    }
    public static func randomX2() -> Float{
        let a = arc4random_uniform(100)
        let b: Float
        if a < 50 {
            b = -2.9
        }
        else {
            b = 2.9
        }
        return Float(b)
    }
    public static func randomDuration() -> TimeInterval{
        let a = arc4random_uniform(10)
        let b = Float(a/10)
        return TimeInterval(b)
    }
    
}
