import SwiftUI

struct SourceCodeFileView: View {
    var sourceCodeFile: SourceCodeFile
    
    var body: some View {
        HStack {
            Image(systemName: "heart.fill")
            Text(sourceCodeFile.name)
            Spacer()
            Text(FormatDate(date: sourceCodeFile.lastEditDate))
                .foregroundColor(Color("FileLastEditDate"))
        }
        .padding()
        .background(Color("FileBackground"))
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
        .shadow(color: Color("FileShadow"), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
    }
}

struct SourceCodeFile_Previews: PreviewProvider {
    static var previews: some View {
        SourceCodeFileView(sourceCodeFile: sourceCodeFiles[1])
            .previewLayout(.fixed(width: 320, height: 70))
    }
}

func FormatDate(date: Date) -> String {
    let dateFormatterPrint = DateFormatter()
    dateFormatterPrint.dateStyle = .short

    return dateFormatterPrint.string(from: date)
}
