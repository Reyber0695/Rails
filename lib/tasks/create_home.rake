namespace :create_home do
  desc "Add a new home in the database"
  task new_home: :environment do
    user = User.find_or_create_by!(
      email: 'example@example.com', 
      name: 'Raul', 
      last_name: 'Castro', 
      mobile_phone: '9999999999', 
      work_place: 'Homie'
    )

    owner = Owner.find_or_create_by!(
      user: user, 
      curp: 'SAFR987654321', 
      registered_in_srpago: true
    )

    Home.find_or_create_by!(owner: owner, price: 100.2, extra_services: 80.34, location: [-1999.99, 1800.98], master_home_id: nil)
    Home.find_or_create_by!(owner: owner, price: 900.7, extra_services: 100.45, location: [ -1999.98, 1888.88], master_home_id: nil)
  end 
end