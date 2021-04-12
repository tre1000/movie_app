Genre.create!([
  {name: "Thriller"},
  {name: "Foreign"},
  {name: "Horror"},
  {name: "Crime"},
  {name: "Drama"}
])
Actor.create!([
  {first_name: "Stuart", last_name: "Eichmann", known_for: "Ultra Ninjas", gender: nil, age: "77", movie_id: 7},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: nil, age: "44", movie_id: 1},
  {first_name: "Harriet", last_name: "Deckow", known_for: "American Ninja", gender: nil, age: "24", movie_id: 1},
  {first_name: "Jake", last_name: "Gyllenhaal", known_for: "Donnie Darko", gender: nil, age: "22", movie_id: 2},
  {first_name: "Belva", last_name: "Mann", known_for: "Green Demon", gender: nil, age: "42", movie_id: 2},
  {first_name: "Al", last_name: "Pacino", known_for: "The Godfather", gender: "male", age: "80", movie_id: 3},
  {first_name: "Myrtice", last_name: "Balistreri", known_for: "The Journals from Outer Space", gender: nil, age: "16", movie_id: 3},
  {first_name: "Michael", last_name: "Cera", known_for: "Superbad", gender: nil, age: "33", movie_id: 3},
  {first_name: "Elyse", last_name: "Dietrich", known_for: "Red Hills", gender: nil, age: "67", movie_id: 4},
  {first_name: "Tom", last_name: nil, known_for: nil, gender: nil, age: "26", movie_id: 4},
  {first_name: "Valene", last_name: "Willms", known_for: "Hard Boiled Man", gender: nil, age: "21", movie_id: 4},
  {first_name: "Wilson", last_name: "Eichmann", known_for: "The Identity from Hell", gender: nil, age: "18", movie_id: 5},
  {first_name: "Pauletta", last_name: "Treutel", known_for: "Invasion of the Tokyo Witch", gender: nil, age: "25", movie_id: 5},
  {first_name: "Lydia", last_name: "Quitzon", known_for: "The Champagne Imp from Mars", gender: nil, age: "38", movie_id: 5},
  {first_name: "Jack", last_name: "Black", known_for: "High Fidelity", gender: nil, age: "50", movie_id: 5},
  {first_name: "Britt", last_name: "Kuhic", known_for: "The American Men from the Black Lagoon", gender: nil, age: "29", movie_id: 4}
])
Movie.create!([
  {title: "The Godfather", year: 1972, plot: "An organized crime dynasty's aging patriarch transfers control of his clandestine empire to his reluctant son.", director: nil, english: true},
  {title: "Goodfellas", year: 1990, plot: "The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.", director: nil, english: true},
  {title: "American Psycho", year: 2000, plot: "A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.", director: nil, english: true},
  {title: "Train to Busan", year: 2016, plot: "While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.", director: "Sang-ho Yeon", english: false},
  {title: "Train to Busan", year: 2013, plot: "While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.", director: "Sang-ho Yeon", english: false},
  {title: "Pulp Fiction", year: 1994, plot: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", director: "Quentin Tarantino", english: true},
  {title: "Oldboy", year: 2003, plot: "After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.", director: "Chan-wook Park", english: false}
])
MovieGenre.create!([
  {genre_id: 4, movie_id: 1},
  {genre_id: 5, movie_id: 1},
  {genre_id: 4, movie_id: 2},
  {genre_id: 5, movie_id: 2},
  {genre_id: 4, movie_id: 3},
  {genre_id: 5, movie_id: 3},
  {genre_id: 1, movie_id: 4},
  {genre_id: 1, movie_id: 5},
  {genre_id: 2, movie_id: 5},
  {genre_id: 5, movie_id: 5},
  {genre_id: 2, movie_id: 7},
  {genre_id: 2, movie_id: 7},
  {genre_id: 2, movie_id: 7}
])
User.create!([
  {name: "yuji", email: "yuji@example.com", password_digest: "$2a$12$sDGJ7O3cWTeXaCHUE25jQuOLbzHVsqVso1al.bBvmImVjKNwm84IO", admin: false},
  {name: "llianna", email: "llianna@example.com", password_digest: "$2a$12$rT5VcxMmMObTyTRuBbc.8uxwkdOHza2JOxQVQ9YrvGlw1.twmbtPa", admin: false},
  {name: "goose maverick", email: "goose@example.com", password_digest: "$2a$12$IkrWAtkOeH8xWPXa4nw9XOsRs0FAPMk1dVVqkv/T4vIr8GPjIzMdi", admin: false},
  {name: "markell", email: "markell@example.com", password_digest: "$2a$12$u7XkBfZFNGtnp2ho8nTar.7vclkGxuNWlBGFgcosuiDPbGWHcAPCy", admin: true},
  {name: "todd", email: "todd@example.com", password_digest: "$2a$12$SS3qQeKTLKUtx/yZB.m0wulOrG.oXm9JGwNwgRpmqxI89rFQipoSS", admin: false}
])
