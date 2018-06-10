class RsvpMailer < ActionMailer::Base
    default from: "beatrice.and.justice@gmail.com"
    default_url_options[:host] = "http://www.beatrice-and-justice.com"
    
    def invite_email(id)
        @person = Rsvp.find(id)
        @rsvp_url = rsvp_link_url(@person.name)
        mail(to: @person.email, subject: "Reminder to RSVP for Justice + Bea's wedding")
    end
end