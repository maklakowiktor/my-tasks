# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

seed_file = Rails.root.join('db', 'seeds', 'projects.yml')
config = YAML::load_file(seed_file)
Project.create!(config)

seed_file = Rails.root.join('db', 'seeds', 'todos.yml')
config = YAML::load_file(seed_file)
Todo.create!(config)