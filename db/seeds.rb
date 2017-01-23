# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.delete_all
Admin.create(email: 'soccerchase@gmail.com', password: 'password', password_confirmation: 'password')

# t.string :page
# t.string :content_name
# t.text :body

PageContent.delete_all
PageContent.create({
  page: 'automotive',
  content_name: 'Main Text',
  body: "Have you locked your keys in your car? Have you lost your keys? No need to worry, put a smile on your face. At Jensen Locksmithing we help people out with automotive lock and/or key problems. Whether it’s unlocking your car or replacing lost or broken keys and remotes, we've got you covered at an affordable rate.\n
         We want to help if anything like this occurs. With technology on the rise today, automotive technology is increasing as well.\n
         We stay up to date with this automotive technology, and we can help you out with our state of the art equipment. Avoid towing costs and high dealership prices.\n"
})
