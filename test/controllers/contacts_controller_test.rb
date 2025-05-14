require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valid_attributes = { name: "Lady Jane Gray" }
    @contact = Contact.create!(@valid_attributes) # Create a post for updating and deleting
  end

  test "should get index" do
     get "/contacts"
    assert_response :success
  end

  test "should show contacts" do
    contact = contacts(:one)
    get "/contacts/#{@contact.id}"
    assert_response :success
  end

  test "should create new contact" do
    assert_difference("Contact.count") do
      post "/contacts", params: { contact: @valid_attributes }
    end
    assert_redirected_to contact_path(Contact.last)
  end

  test "should update contact" do
    patch "/contacts/#{@contact.id}", params: { contact: { name: "Updated Name" } }
    assert_redirected_to contact_path(@contact)
    @contact.reload
    assert_equal "Updated Name", @contact.name
  end

  test "should delete contact" do
    delete "/contacts/#{@contact.id}"

    assert_equal "302", response.code
  end
end
