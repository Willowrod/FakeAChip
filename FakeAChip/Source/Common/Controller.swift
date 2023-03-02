//
//  Controller.swift
//  Controller
//
//  Created by Mike Hall on 14/09/2021.
//



import GameController

class Controller {
    var controller: GCVirtualController
    
    var handleLeftPad: GCControllerDirectionPadValueChangedHandler? = nil {
        didSet {
          // TODO: Handle cases when keyboard or gamepad is available
          
          if let leftPad = controller.controller?.extendedGamepad?.leftThumbstick {
            leftPad.valueChangedHandler = handleLeftPad
          }
        }
      }
    
    var handleAButton: GCControllerButtonValueChangedHandler? = nil {
        didSet {
          // TODO: Handle cases when keyboard or gamepad is available
          
          if let aButton = controller.controller?.extendedGamepad?.buttonA {
              aButton.valueChangedHandler = handleAButton
          }
        }
      }
    
    init() {
        controller = createVirtualController()
     }
    
    func connect() {
        controller.connect()
       // handleLeftPad = handleLeftPadController
    }
    
    func disconnect() {
        controller.disconnect()
    }
    
    let createVirtualController = { () -> GCVirtualController in

      let virtualConfiguration = GCVirtualController.Configuration()
      virtualConfiguration.elements = [GCInputLeftThumbstick, GCInputButtonA]

      let virtualController = GCVirtualController(configuration: virtualConfiguration)
        
      return virtualController
    }
    
    func handleLeftPadController(dPad: GCControllerDirectionPad, xAxis: Float, yAxis: Float) {
        
        print("xAxis: \(xAxis), yAxis: \(yAxis)")
        
        
//      if xAxis == yAxis, xAxis == 0 {
//        hero.node.physicsBody?.angularVelocity = SCNVector4()
//        hero.node.physicsBody?.velocity = SCNVector3()
//        hero.node.physicsBody?.mass = 0
//
//        return
//      }
//
//      let velocity = SCNVector3(xAxis, 0, -yAxis) * heroSpeed
//      hero.node.physicsBody?.velocity = velocity
//      hero.node.physicsBody?.mass = 1
    }
}
