require "open-uri"

Student.destroy_all # if in Develoment DB
put "Database is clean 🧼"

# API_KEY = ENV["CLOUDINARY_URL"]

# open = URI.open("www.lewagoncooking.com/recipes/api_key=#{API_KEY}")
# JSON.parse(open)

# Kenta
file = URI.open("https://avatars.githubusercontent.com/u/166846379?v=4")
student = Student.new(nickname: "KenKen", bio: "Not a man of god, also great at frisbee 🥶 and i also have allergies: pollen (like tintin)")
student.photo.attach(io: file, filename: "kenken.jpg", content_type: "image/jpg")
student.save!

# Mathieu
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1715688364/xuur9mrpydgx6ozyuqjf.jpg")
student = Student.new(nickname: "Martmart (Mathieu)", bio: "♱ A man of God ♱")
student.photo.attach(io: file, filename: "kenken.jpg", content_type: "image/jpg")
student.save!

# Joachim
file = URI.open("https://avatars.githubusercontent.com/u/135339304?v=4")
student = Student.new(nickname: "Jojo (Joachim)", bio: "Welcome to my crib! 🧢")
student.photo.attach(io: file, filename: "kenken.jpg", content_type: "image/jpg")
student.save!

# Martin
file = URI.open("https://avatars.githubusercontent.com/u/166991937?v=4")
student = Student.new(nickname: "TinTin", bio: "Allergies: Pollen 🌸 , Forest 🌳 (Only during the Summer ☀️)")
student.photo.attach(io: file, filename: "kenken.jpg", content_type: "image/jpg")
student.save!

puts "#{Student.last.nickname} got created!"

