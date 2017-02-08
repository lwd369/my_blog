# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |index|
  blog = Blog.new()
  blog.title = "测试文章#{index}"
  blog.content = "这是第#{index}篇测试文章，文章的正文内容随着索引的增加而翻倍"*index
  blog.save()
end