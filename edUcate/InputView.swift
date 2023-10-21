//
//  InputView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if (isSecureField) {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .padding()
                    .background(UColors.white)
                    .cornerRadius(50)
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .padding()
                    .background(UColors.white)
                    .cornerRadius(50)
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), placeholder: "name@example.com")
    }
}
