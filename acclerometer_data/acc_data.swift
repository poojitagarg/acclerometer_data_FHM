//
//  acc_data.swift
//  acclerometer_data
//
//  Created by School on 2/2/23.
//

import Foundation
import SwiftUI
import CoreMotion

class acc: ObservableObject{
    @Published var dd = 6.0

    
    let motion = CMMotionManager()

    func startAccelerometers() {
       // Make sure the accelerometer hardware is available.
       if self.motion.isAccelerometerAvailable {
           self.motion.accelerometerUpdateInterval = 0.1  // 60 Hz
          self.motion.startAccelerometerUpdates()

         
             // Get the accelerometer data.
           if let data = self.motion.accelerometerData {
               let x = data.acceleration.x
               let y = data.acceleration.y
               let z = data.acceleration.z
           
               dd = x
              // label.text = String(x)
               // Use the accelerometer data in your app.
           }
          }

       }
}
