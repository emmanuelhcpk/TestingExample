require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
	test "Links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]",help_path
	end

test"help page" do

get help_path#get the view
assert_template 'static_pages/help'#here we chech if the layout its the correct for the view
assert_select "h1", "Help!"
assert_select "a[href=?]",root_path #here we are checking if exist a <a> or link to root page of the site in the help view
assert_select "div.container"#checking thing from the html "view"
assert_select "div#cosas"
get sign_up_path
assert_select "title", "Sign Up! | BlogTdd"#checking the title in the page 
#assert_select "title","help"
end

end
