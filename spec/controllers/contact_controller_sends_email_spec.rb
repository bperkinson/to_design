# spec/controllers/links_controller_spec.rb
# context "when the contact is valid" do
# 	it "sends an email to the moderators" do
# 		valid_contact = double(save: true)
# 		allow(Contact).to receive(:new).and_return(valid_contact) 
# 		allow(ContactMailer).to receive(:new_contact)
# 		post :create, contact: { attribute: "value" }
# 		expect(ContactMailer).to have_received(:new_contact).with(valid_contact) 
# 	end
# end