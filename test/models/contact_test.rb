require "test_helper"

class ContactTest < ActiveSupport::TestCase
  describe Contact do
    describe "A contact" do
      before {
        @contact = Contact.new(
          name: "Jenny",
          phone: "867-5309",
          social: "http://instagram.com/tommytutone",
          notes: "saw your name and number on the wall",
          tags: "#songs_that_didnt_age_well")
      }
      it "contains expected fields" do
        assert_equal "Jenny", @contact.name
        assert_equal "867-5309", @contact.phone
        assert_equal "http://instagram.com/tommytutone", @contact.social
        assert_equal "saw your name and number on the wall", @contact.notes
        assert_equal "#songs_that_didnt_age_well", @contact.tags
      end
    end
  end
end
