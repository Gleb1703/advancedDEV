import SwiftUI

struct CinemaGuideData {
    static let movies: [Post] = [
        Post(title: "Побег из Шоушенка", description: "Драма, криминал. История о дружбе и надежде в тюрьме.", image: Image("shawshank_redemption"), rating: 9.3),
        Post(title: "Властелин колец: Возвращение Короля", description: "Фэнтези. Завершение эпической саги о Средиземье.", image: Image("return_of_the_king"), rating: 8.9),
        Post(title: "Зеленая миля", description: "Драма, фэнтези. История о надежде и доброте.", image: Image("green_mile"), rating: 8.6),
        Post(title: "Звездные войны: Эпизод IV - Новая надежда", description: "Фантастика, боевик. Начало легендарной саги.", image: Image("star_wars_new_hope"), rating: 8.7),
        Post(title: "Крестный отец", description: "Драма, криминал. Классика мафиозной кинематографии.", image: Image("godfather"), rating: 9.2),
        Post(title: "Парк Юрского периода", description: "Фантастика, приключения. Приключения с динозаврами.", image: Image("jurassic_park"), rating: 7.9),
        Post(title: "Бойцовский клуб", description: "Драма, триллер. Подпольная группа и их особенные правила.", image: Image("fight_club"), rating: 8.8),
        Post(title: "Интерстеллар", description: "Научная фантастика. Путешествие в космос в поисках нового дома.", image: Image("interstellar"), rating: 8.6),
        Post(title: "Матрица", description: "Научная фантастика, боевик. Путешествие в мир иллюзий.", image: Image("matrix"), rating: 8.7),
        Post(title: "Назад в будущее", description: "Научная фантастика, комедия. Путешествие во времени на DeLorean.", image: Image("back_to_the_future"), rating: 8.5)
    ]
}
