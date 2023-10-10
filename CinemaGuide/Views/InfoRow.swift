import SwiftUI

struct InfoRow: View {
    var post: Post

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                post.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 60)
                    .cornerRadius(8)
                VStack(alignment: .leading) {
                    HStack {
                        Text(post.title)
                            .font(.headline)
                        Spacer()
                        Text(String(post.rating))
                            .font(.headline)
                    }
                }
            }
        }
    }
}
