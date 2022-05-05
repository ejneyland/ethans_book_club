# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.destroy_all

# Book.destroy_all
# Deletes all books entered through SQL in IRB
# Now only contains the books that were hardcoded
# Used for development, not for a live site

ara = Author.create(first_name: "Evelyn", last_name: "Araluen")
bul = Author.create(first_name: "Will", last_name: "Bulsiewicz")
tol = Author.create(first_name: "Eckhart", last_name: "Tolle")
lee = Author.create(first_name: "Harper", last_name: "Lee")
wol = Author.create(first_name: "Tobias", last_name: "Wolff")
gre = Author.create(first_name: "Kate", last_name: "Grenville")
har = Author.create(first_name: "Roger", last_name: "Hargreaves")


ara.books.create(title: "Drop Bear", publisher: "University of Queensland Press", date_published: "2021-03-03")
bul.books.create(title: "Fiber Fueled", publisher: "Penguin", date_published: "2020-02-02")
tol.books.create(title: "The Power of Now", publisher: "Namaste Publishing", date_published: "2004-04-04")
lee.books.create(title: "To Kill a Mockingbird", publisher: "Arrow Books", date_published: "2006-06-06")
wol.books.create(title: "This Boy's Life", publisher: "Bloomsbury Publishing", date_published: "1999-09-09")