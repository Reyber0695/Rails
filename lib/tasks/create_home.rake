namespace :create_home do
  desc "Add a new home in the database"
  task new_home: :environment do
    user = User.find_or_create_by!(
      email: 'example@example.com', 
      name: 'Roerto', 
      last_name: 'Castro', 
      mobile_phone: '9999999999', 
      work_place: 'Homie'
    )

    owner = Owner.find_or_create_by!(
      user: user, 
      curp: 'SAFR123456789', 
      registered_in_srpago: true
    )

    Home.find_or_create_by!(rent: rent, owner: owner, price: 100.2, extra_service: 80.34)
    Home.find_or_create_by!(rent: rent, owner: owner, price: 900.7, extra_service: 100.45)
  end 
end