import SwiftUI

struct SourceCodeFileListView: View {
    var body: some View {
        NavigationView {
            List(sourceCodeFiles) { sourceCodeFile in
                ZStack {
                    SourceCodeFileView(sourceCodeFile: sourceCodeFile)
                    NavigationLink(destination: CodeEditor()) {
                        EmptyView()
                    }
                    .opacity(/*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                }
            }
            .supportedNavigationTitle(with: "Files")
        }
    }
}

struct SourceCodeFileListView_Previews: PreviewProvider {
    static var previews: some View {
        SourceCodeFileListView()
            .preferredColorScheme(.dark)
    }
}


@available(iOS 14, *)
struct NavigationTitleViewModifier: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        content
            .navigationTitle(text)
    }
}
struct NavigationBarTitleViewModifier: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitle(text)
    }
}
extension View {
    @ViewBuilder
    func supportedNavigationTitle(with text: String) -> some View {
        if #available(iOS 14, *) {
            self
                .modifier(NavigationTitleViewModifier(text: text))
        }
        else {
            self.modifier(NavigationBarTitleViewModifier(text: text))
        }
    }
}
