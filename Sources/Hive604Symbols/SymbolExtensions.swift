//
//  SymbolExtensions.swift
//  Hive604Symbols
//
//  Created by Steven Fisher on 2026-03-21.
//

#if canImport(SwiftUI)
import SwiftUI

extension Image {
    nonisolated
    init(symbol: Symbol) {
        self.init(systemName: symbol.rawValue)
    }
}

extension Label where Title == Text, Icon == Image {
    nonisolated
    init(_ title: String, symbol: Symbol) {
        self.init(title, systemImage: symbol.rawValue)
    }
}

extension Button where Label == SwiftUI.Label<Text, Image> {
    nonisolated
    init(_ title: String, symbol: Symbol, role: ButtonRole? = nil, action: @escaping () -> Void) {
        self.init(title, systemImage: symbol.rawValue, role: role, action: action)
    }
}

extension ContentUnavailableView where Label == SwiftUI.Label<Text, Image>, Description == Text?, Actions == EmptyView {
    nonisolated
    init(_ title: LocalizedStringKey, symbol: Symbol, description: Text? = nil) {
        self.init(title, systemImage: symbol.rawValue, description: description)
    }
}
#endif
