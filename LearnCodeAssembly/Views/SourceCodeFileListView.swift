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
            }
            .navigationBarTitle("Files", displayMode: .inline)
            //.navigationTitle("Files")
    }
}

struct SourceCodeFileListView_Previews: PreviewProvider {
    static var previews: some View {
        SourceCodeFileListView()
            .preferredColorScheme(.light)
    }
}
