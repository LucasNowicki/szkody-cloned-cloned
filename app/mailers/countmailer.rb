class Countmailer < ApplicationMailer
    def sendtocount
        mail(to: 'lucas.nowicki@gmail.com', subject: 'Sample Email')
    end
end
