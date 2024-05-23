//
//  Fonts+Extension.swift
//  ListedAssignment
//
//  Created by Suchith Nayaka on 22/05/24.
//

import Foundation
import SwiftUI
    
extension Font {
    
    enum FigtreeWeight: String {
        case bold = "Figtree-Bold"
        case medium = "Figtree-Medium"
        case regular = "Figtree-Regular"
        case semibold = "Figtree-SemiBold"
    }
    
    static func figtree(size: CGFloat, weight: FigtreeWeight) -> Font {
        if let font = UIFont(name: weight.rawValue, size: size) {
            return Font(font)
        } else {
            return Font.figtree(size: size, weight: .regular)
        }
    }
}
