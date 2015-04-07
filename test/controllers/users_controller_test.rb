require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
def setup 
@user = User.create!(id: 1,name: "emma",email:"emma@emma.com")

end

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title" , "Sign Up! | BlogTdd"
	

     end


	test "should get the title in show option" do
		get :show, :id => @user.id
    	assert_select "title",   "#{@user.name} | BlogTdd" 
	end

	
end
