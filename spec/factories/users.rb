FactoryBot.define do
  factory :mock_user, class: User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.full_address }
    role { }
    google_id { 'jdfhiewlej83hr'}
    token { 'kdjfdlsgkirjeg;weskdr3u9843' }
    password { Faker::Internet.password(min_length: 6) }
  end

  factory :mock_teacher, class: User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.full_address }
    role { 'teacher'}
    google_id { 'jdfhiewlej83hr'}
    token { 'kdjfdlsgkirjeg;weskdr3u9843' }
    password { Faker::Internet.password(min_length: 6) }
  end

  factory :mock_parent, class: User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.full_address }
    role { 'parent'}
    google_id { 'j374792384yer'  }
    token { 'ufh83uriajsifjalsgkodute'}
    password { Faker::Internet.password(min_length: 6) }
  end
end
