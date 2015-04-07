require 'test_helper'

class UserTest < ActiveSupport::TestCase

def setup #this methodd automatically runs with each test

@user = User.new(name: "example",email:"example@example.com",password:"123456")
	
end
#this its the way to validate the saving, and if the attributes or arguments to create a instance of that model are corrects
	test "valid users" do 

		assert @user.valid?

		end
#this its the way to validate a atribute of a model!!

	  test "name is required" do

		@user.name = " "	  
		assert_not @user.valid?

		end
		 test "email is required" do

		@user.email = " "	  
		assert_not @user.valid?

		end


end
