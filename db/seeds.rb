# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding DB"
puts "-"*80
puts "Cleaning up Database"
Admin.delete_all
Admin.create(email: 'soccerchase@gmail.com', password: 'password', password_confirmation: 'password')
Admin.create(email: 'tamra.cooper72@gmail.com', password: 'password', password_confirmation: 'password')
puts "Admin Users Created"

# t.string :page
# t.string :content_name
# t.text :body

PageContent.delete_all
PageContent.create({
  page: 'automotive',
  content_name: 'Main Text',
  body: "Have you locked your keys in your car? Have you lost your keys? No need to worry, put a smile on your face. At Jensen Locksmithing we help people out with automotive lock and/or key problems. Whether it’s unlocking your car or replacing lost or broken keys and remotes, we've got you covered at an affordable rate.\n We want to help if anything like this occurs. With technology on the rise today, automotive technology is increasing as well.\n We stay up to date with this automotive technology, and we can help you out with our state of the art equipment. Avoid towing costs and high dealership prices.\n"
})

PageContent.create({
  page: 'automotive',
  content_name: 'Bottom Text 1',
  title: "Lost Key?",
  body: "Did you try to get into your car only to find out that you lost your keys? Uh-Oh! Jensen Locksmithing can help with that too. We can cut new keys and program them to the vehicle too, if needed."
})

PageContent.create({
  page: 'automotive',
  content_name: 'Bottom Text 2',
  title: "Car replacement Key",
  body: "Many vehicles now require programmable 'chipped keys.' These keys require programming to be able to communicate with your car in order to start it. We have the equipment and knowledge neccessary to do that as well. We will come right to your vehicle and take care of it on the spot."
})

PageContent.create({
  page: 'automotive',
  content_name: 'Bottom Text 3',
  title: "Why You Need a Spare Car Key",
  body: "Do you only have one key for your vehicle? What if you lose that one? We can help! Most vehicles, especially model years 2000 and newer, have keys with electronic chips built in.\n\n These chips are programmed to 'talk' to your car and let it know this is a valid key and can start the car. The upside to these keys - much better security. The downside - they can be expensive! If you lose that last key, it adds a lot to the expense of producing a new key. It could as much as double the cost."
})

puts "Creating Page Images"

# automotive_side_image2_path = File.join(Rails.root, 'app', 'assets', 'images', 'automotive', 'general_van.jpg')
# cloud_automotive_side_2 = Cloudinary::Uploader.upload(automotive_side_image2_path)
PageImage.create!({
  page: "automotive",
  name: "automotive-side-2",
  url: "https://res.cloudinary.com/dtvsv3vni/image/upload/v1569734998/r9tgbgae47m7ktb2f9p2.jpg",
  description: "Jensen Locksmithing Van",
  alt_text: "Jensen Locksmithing Van",
  default: true
})

puts "Page Content Created"
puts "-"*80
puts "Done"
