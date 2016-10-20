class Countmailer < ApplicationMailer
    def sendtocount(id)
        post = post.find(id)
        mail(to: 'lucas.nowicki@gmail.com', subject: 'Sample Email')
    end
end
