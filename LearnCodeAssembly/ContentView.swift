//
//  ContentView.swift
//  LearnCodeAssembly
//
//  Created by Игорь Кондратьев on Nov/6/20.
//  Copyright © 2020 Wings' Might. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var width: CGFloat? = 40

    var body: some View {
        List {
            HStack {
                HStack {
                    Spacer()
                    Text("1")
                }
                .frame(width: width, alignment: .leading)
                .lineLimit(1)
                .background(Color.gray)

                Text(".386")
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray)
            }
            HStack {
                HStack {
                    Spacer()
                    Text("2")
                }
                .frame(width: width, alignment: .leading)
                .lineLimit(1)
                .background(Color.gray)

                Text(".model flat, stdcall")
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray)
            }
            HStack {
                HStack {
                    Spacer()
                    Text("3")
                }
                .frame(width: width, alignment: .leading)
                .lineLimit(1)
                .background(Color.gray)

                Text(".stack 4096")
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
