require 'spec_helper'
require 'rails_helper'

describe 'messages/new', :type => :view do
  before(:all) do
    assign(:message, 
      Message.new
    )
  end

  context "Checkpoint 1" do
    it "displays a form" do
      render

      expect(rendered).to have_tag("form", with: { method: "post"}), "In the view, did you use form_for to add a form?"
       expect(rendered).to have_tag("textarea", with: {id: "message_content", name: "message[content]" }), "In the form, make sure to add a text area for a message's content."
      expect(rendered).to have_tag("input", with: { type: "submit"}), "Make sure your form has a submit button."
    end
  end
end
