# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Book.destroy_all
# Deletes all books entered through SQL in IRB
# Now only contains the books that were hardcoded
# Used for development, not for a live site

Book.create(title: "Drop Bear", author: "Evelyn Araluen", publisher: "University of Queensland Press", date_published: "2021-03-03")
Book.create(title: "Fiber Fueled", author: "Will Bulsiewicz", publisher: "Penguin", date_published: "2020-02-02")
Book.create(title: "The Power of Now", author: "Eckhart Tolle", publisher: "Namaste Publishing", date_published: "2004-04-04")
Book.create(title: "To Kill a Mockingbird", author: "Harper Lee", publisher: "Arrow Books", date_published: "2006-06-06")
Book.create(title: "This Boy's Life", author: "Tobias Wolff", publisher: "Bloomsbury Publishing", date_published: "1999-09-09")