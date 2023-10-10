import SwiftUI

struct InfoDetails: View {
    var post: Post

    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFill()
                .frame(height: 450)
                .clipped()
            VStack(alignment: .leading, spacing: 16) {
                Text(post.title)
                    .font(.title)
                    .lineLimit(nil)
                Text("Рейтинг: \(String(post.rating))")
                    .font(.title2)
                    .foregroundColor(.secondary)
                Text(post.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
