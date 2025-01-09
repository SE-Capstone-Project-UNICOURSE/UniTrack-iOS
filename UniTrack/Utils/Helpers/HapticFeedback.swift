//
//  HapticFeedback.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

//This function allows you to add haptic feedback throughout the app.
func hapticFeedback(feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
    UINotificationFeedbackGenerator().notificationOccurred(feedbackType)
}
