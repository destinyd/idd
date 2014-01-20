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
%w(什么是IDD疗法 了解腰背疼痛 常见问题解答 专业病理词汇 合作意向 关于我们).each do |name|
  Category.where(name: name, is_menu: true).first_or_create
end
%w(最新活动 康复案例 视频中心 热点文章).each do |name|
  Category.where(name: name, is_index: true).first_or_create
end

%w(IDD治疗中心和合作关联医院).each do |name|
  Category.where(name: name).first_or_create
end

{
  'IDD疗法介绍' => %w(什么是IDD疗法 IDD疗法的原理 IDD疗法仪器介绍 IDD疗法康复数据 为什么选择IDD疗法 IDD疗法费用标准 IDD疗法的适用和禁忌),
  'IDD疗法最新资讯' => %w(最新活动 热点文章 康复案例 网络视频)
}.each do |category_name, sidebars|
  sidebars.each do |sidebar|
    Sidebar.where(category_name: category_name, name: sidebar).first_or_create
  end
end

Option.where(name: 'english').first_or_create(value: 'false')
Option.where(name: 'wangqiao').first_or_create(value: 'false')
Option.where(name: 'home').first_or_create(
  value: '
    <p>腰背疼痛几乎是最常见的患病痛苦，多多少少迟早会影响到80%的人。通常，腰背部问题会造成一些身体功能的永久丧失，不管愿意不愿意，这可能会迫使你放弃在生活中的某些重要的东西。</p>

    <p>到目前为止，腰背痛的治疗方法有：卧床休息，肌肉松驰药，止痛药，按摩正骨等等；如果这些都没有效，那就只好做手术了。</p>

    <p>现在，你有一个更好的选择：IDD疗法！不用手术。没有注射。对于大多数患者都十分有效，你再也不须忍受背部疼痛了！</p>

    <p>那么，什么是IDD疗法呢？ &gt; &gt; <a href="/categories/526682a551e4a135d7000001" class="sidebar_cyan">详细请见</a></p>
  ')

Option.where(name: 'footer_con').first_or_create(
  value: '
      <p>IDD Therapy® 是北京晟尚世纪医疗设备有限公司的注册商标</p>
      <p>本网站文字及图片内容归是京晟尚世纪医疗设备有限公司所有 任何单位及个人未经许可，不得擅自转载使用</p>
      <p>©2013 www.iddtherapy.com.cn All Rights Reserved TEL: 010-64820478</p>
  '
)
