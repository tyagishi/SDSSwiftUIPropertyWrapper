//
//  AnimateState.swift
//
//  Created by : Tomoaki Yagishita on 2022/03/11
//  © 2022  SmallDeskSoftware
//

import Foundation
import SwiftUI

@propertyWrapper
public struct AnimateState<T>: DynamicProperty {
    let storage: State<T>
    let animation: Animation?

    public init(wrappedValue: T, animation: Animation? = nil) {
        self.storage = State<T>(initialValue: wrappedValue)
        self.animation = animation
    }
    
    public var wrappedValue: T {
        get {
            self.storage.wrappedValue
        }
        nonmutating set {
            withAnimation(animation) {
                self.storage.wrappedValue = newValue
            }
        }
    }
    
    public var projectedValue: Binding<T> {
        storage.projectedValue
    }
}
