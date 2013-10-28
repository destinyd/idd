# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
  #Role.mongo_session['roles'].insert({ :name => role })
  #puts 'role: ' << role
#end
#puts 'DEFAULT USERS'
#user = User.create! :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.name
#user.add_role :admin
%w(什么是IDD疗法 了解腰背疼痛 常见问题解答 专业病理词汇 合作意向 关于我们 IDD治疗中心和合作关联医院).each do |name|
  Category.where(name: name, is_menu: true).first_or_create
end
%w(最新活动 康复案例 视频中心 热点文章).each do |name|
  Category.where(name: name, is_index: true).first_or_create
end

{
  'IDD疗法介绍' => %w(什么是IDD疗法 IDD疗法的原理 IDD疗法仪器介绍 IDD疗法康复数据 为什么选择IDD疗法 IDD疗法费用标准 IDD疗法的适用和禁忌),
  'IDD疗法最新资讯' => %w(最新活动 热点文章 康复案例 网络视频)
}.each do |category_name, sidebars|
  sidebars.each do |sidebar|
    Sidebar.where(category_name: category_name, name: sidebar).first_or_create
  end
end
