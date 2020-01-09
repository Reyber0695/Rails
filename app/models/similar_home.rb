class SimilarHome
  def similar(User, Owner, Home)
    Owner.each do |ow|
     Home.each do |hm|
      User.each do |u|
        if ow[:id] = hm[:owner] && ow[:user] = u[:id]
          puts "#{u[:name]} #{u[:last_name]} #{hm[:id]} #{hm[:total_amount]} #{hm[:location]}"
        end
      end
     end
    end
  end
end

obj= SimilarHome.new()
obj.similar()
