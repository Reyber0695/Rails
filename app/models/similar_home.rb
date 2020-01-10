class SimilarHome
  def self.similar
    compare = []
    owners_id = Owner.pluck(:id)
    owners_id.each do |id_owner|
      first_owner = Owner.find(id_owner)
      homes = Home.where(owner_id: id_owner).pluck(:id)
      homes.each_with_index do |home, index|
        home_owner = Home.find(id: home)
        homes.each_with_index do |home_2, index|
          home_owner_2 = Home.find(id: home_2)
          home_owner_id = home_owner.id
          home_location = home_owner.location
          home_status = home_owner.status
          home_amount = home_owner.total_amount
          if not compare.include?(home_owner)
            if (home_owner_id != home_owner_2.id) && (home_amount == home_owner_2.total_amount) && (home_location == home_owner_2.location) && (home_status == home_owner_2.status)
              compare.push(home_owner)
              puts "#{first_owner.user.name}, #{first_owner.user.email}, #{home_owner_id}, #{home_status}, #{home_amount}, #{home_location}"
            end
          end
        end
      end
    end
  end
end

SimilarHome.similar