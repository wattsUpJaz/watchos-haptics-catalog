//
//  ContentView.swift
//  Watch Haptics Catalog Watch App
//
//  Created by Jasmyne Carson on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Button("notification", action: {playHaptic(hapticType: WKHapticType.notification)})
                Button("direcitonUp", action: {playHaptic(hapticType: WKHapticType.directionUp)})
                Button("directionDown", action: {playHaptic(hapticType: WKHapticType.directionDown)})
                Button("success", action: {playHaptic(hapticType: WKHapticType.success)})
                Button("failure", action: {playHaptic(hapticType: WKHapticType.failure)})
                Button("retry", action: {playHaptic(hapticType: WKHapticType.retry)})
                Button("start", action: {playHaptic(hapticType: WKHapticType.start)})
                Button("stop", action: {playHaptic(hapticType: WKHapticType.stop)})
                Button("click", action: {playHaptic(hapticType: WKHapticType.click)})
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func playHaptic(hapticType: WKHapticType) {
    WKInterfaceDevice.current().play(hapticType)
}
