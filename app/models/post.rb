class Post < ActiveRecord::Base
    has_attached_file :document, styles: {thumb: ["300x300>", :png] }
    validates_attachment :document, content_type: { content_type: 'application/pdf' }
    
    
    
    
    def self.shit(costam)
       return "gowno " + costam.to_s 
    end
    
    # Post.shit('cwel')
    #  => "gowno cwel" 
    
    def self.sendEmail(post_id)
        post = Post.find(post_id)
        
       
 
        wiadomosc_email = "Kliknąłes w #{post.mark}, #{post.year}, i cos tam kurwa #{post.registration}. Zajebiscie."
        # https://bitbucket.org/mailchimp/mailchimp-api-ruby/
        # https://apidocs.mailchimp.com/api/downloads/
        
        # Google Postman
        
        # Tu wkleic kod z GooglePostman
        
        puts wiadomosc_email
        
        # post = nil
        
        if post != nil
            return 200
        else
            return 404
        end
    end
    
end
