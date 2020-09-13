module CommonUtils
	
	def CommonUtils.user_details(user_id)
		user = User.find(user_id)
		user_name = user.first_name+" "+user.last_name
		user_mobile = user.mobile_no
		[user_name, user_mobile]
	end
	def CommonUtils.seach_page_api
		users_property_hash = {}
	    users_propertis = User.includes(:propties)
	    prop = Property.all
	    prop.each do |p|
	      users_property_hash["#{p.id}"] = {}
	      users_property_hash["#{p.id}"]["user_id"] = p.user_id
	      users_property_hash["#{p.id}"]["prop_type"] = p.prop_type
	      users_property_hash["#{p.id}"]["area1"] = p.area1
	      users_property_hash["#{p.id}"]["area2"] = p.area2
	      users_property_hash["#{p.id}"]["pincode"] = p.pincode
	      users_property_hash["#{p.id}"]["description"] = p.description
	    end
	    users_property_hash
	    # render :json => users_property_hash.to_json
	end
	def CommonUtils.admin_type_array_index(admin_type_arr, key)
		admin_arr = "AdminType"+"::"+admin_type_arr.to_s
		eval(admin_arr).map{|t| t[1] if t[0] == "#{key}".to_i}.compact[0]
	end

end