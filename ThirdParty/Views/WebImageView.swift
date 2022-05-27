import SwiftUI
import SDWebImageSwiftUI

struct WebImageView: View {
    private let imageUrl = "https://www.google.com/logos/doodles/2021/seasonal-holidays-2021-6753651837109324-6752733080595603-cst.gif"
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: imageUrl)!)
                .placeholder(Image(systemName: "hourglass"))
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
            
            if let url = URL(string: imageUrl),
               let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            
            Spacer()
        }
    }
}

struct WebImageExample_Previews: PreviewProvider {
    static var previews: some View {
        WebImageView()
    }
}
