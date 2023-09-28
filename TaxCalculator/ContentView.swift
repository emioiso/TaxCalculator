//
//  ContentView.swift
//  TaxCalculator
//
//  Created by emi oiso on 2023/09/26.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
//    @State var tax8 = 0.0
//    @State var tax10 = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("ここに文字を入力", text: $inputText)
                .keyboardType(.numberPad)
//            Button("計算"){
//                tax8 = (Double(inputText) ?? 0) * 0.08
//                tax10 = (Double(inputText) ?? 0) * 0.1
//            }
            Text("価格: \(inputText)")
            Text("消費税8%: \((Double(inputText) ?? 0) * 0.08)")
            Text("消費税10%: \((Double(inputText) ?? 0) * 0.1)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
