import SwiftUI

struct InfoView: View {
    let posts: [Post] = CinemaGuideData.movies

    var body: some View {
        NavigationView {
            List(posts, id: \.title) { post in
                NavigationLink(destination: InfoDetails(post: post)) {
                    InfoRow(post: post)
                }
            }
            .navigationTitle("Лучшие фильмы")
        }
    }
}
