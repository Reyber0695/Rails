FactoryBot.define do
  factory :home do
    owner { FactoryBot.create(:owner) }
    price { Faker::Number.decimal(l_digits: 6, r_digits: 2)}
    extra_services { Faker::Number.decimal(l_digits: 6, r_digits: 2) }
    total_amount { Faker::Number.decimal(l_digits: 6, r_digits: 2) }
  end
end