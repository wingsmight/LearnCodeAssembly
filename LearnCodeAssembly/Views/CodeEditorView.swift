import SwiftUI

struct CodeEditor: View {
    @State private var minWidth: CGFloat? = 40
    @State private var maxLineHeight: CGFloat? = 40
    @State private var minLineHeight: CGFloat? = 20

    var body: some View {
        VStack {
            VStack {
                HStack {
                    HStack {
                        Spacer()
                        Text("1")
                    }
                    .frame(width: minWidth, alignment: .leading)
                    .lineLimit(1)
                    
                    Text(".386")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                }
                HStack {
                    HStack {
                        Spacer()
                        Text("2")
                    }
                    .frame(width: minWidth, alignment: .leading)
                    .lineLimit(1)

                    Text(".model flat, stdcall")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                }
                HStack {
                    HStack {
                        Spacer()
                        Text("3")
                    }
                    .frame(width: minWidth, alignment: .leading)
                    .lineLimit(1)

                    Text(".stack 4096")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CodeEditor()
    }
}
