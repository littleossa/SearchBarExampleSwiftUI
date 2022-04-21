//
//  View+placeholder.swift
//  SearchBarExampleSwiftUI
//
//  Created by 平岡修 on 2022/04/21.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        color: Color,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder()
                .opacity(shouldShow ? 1 : 0)
                .foregroundColor(color)
            self
        }
    }
}
