# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Producto.destroy_all

producto_contents = [
  "Silver, curly hair neatly coiffured to reveal a sculpted, worried face. Glinting blue eyes, set thightly within their sockets, watch hungrily over the armies they've become enchancted by for so long.",
  "An old tattoo of a small wolf is proudly worn just below his left eye leaves a compelling memory of a reclaimed home.",
  "This is the face of Alre Dawnwhisper, a true champion among high elves. He stands tall among others, despite his strong frame.",
  "There's something different about him, perhaps it's his sympathy or perhaps it's simply his painful past. But nonetheless, people tend to become his friend, while trying to subtlely stare.",
  "The is the face of Allyson Geary, a true hero among humans. She stands big among others, despite her muscled frame.",
  "There's something misleading about her, perhaps it's her kindness or perhaps it's simply her gentleness. But nonetheless, people tend to be curious about her, while trying to avoid her."
]

6.times do |index|
  Producto.create!(
    title: "Producto #{index}",
    cantidad: "#{rand(6).to_s + index.to_s}",
    content: producto_contents[index]
  )
end
