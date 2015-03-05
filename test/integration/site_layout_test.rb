require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
	test "Links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]",help_path
	end

test"help page" do
get help_path
assert_template 'static_pages/help'
assert_select "h1", "Help!"
assert_select "a[href=?]",root_path 
assert_select "div.container"
assert_select "div#cosas"
#assert_select "title","help"
end

end
