//
//  ListRowSeparatorsHidden.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct ListRowSeparatorsHidden: ViewModifier {
    //This is for hiding the default list separator. We are hoping that Apple is going to add a modifier to do this without writing that many lines of code. Once they release it, we are going to update this file.
  static let listRowHeight: CGFloat = 44
  var listRowInsets: EdgeInsets
  var backgroundColor: Color
  init(listRowInsets: EdgeInsets, backgroundColor: Color) {
    self.listRowInsets = listRowInsets

    var alpha: CGFloat = 0
    UIColor(backgroundColor).getWhite(nil, alpha: &alpha)
    assert(alpha == 1)
    self.backgroundColor = backgroundColor
  }
  func body(content: Content) -> some View {
    content
      .padding(listRowInsets)
      .frame(
        minWidth: 0, maxWidth: .infinity,
        minHeight: Self.listRowHeight,
        alignment: .leading
      )
      .listRowInsets(EdgeInsets())
      .background(backgroundColor)
  }
}
extension EdgeInsets {
  static let defaultListRowInsets = Self(top: 10, leading: 16, bottom: 10, trailing: 16)
}
extension View {
  func hideSeparators(insets: EdgeInsets = .defaultListRowInsets, rowBackground: Color) -> some View {
    modifier(ListRowSeparatorsHidden(listRowInsets: insets, backgroundColor: rowBackground))
  }
}
