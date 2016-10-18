class: PostMailer << ActionMailer::Base

    def post_sender
        mail(to:"lucas.nowicki@gmail.com",
             from: "noworneversollutions@gmail.com",
             subject:"cos tam cos tam",
             body: "shit z tego bedzie"
        )
    end


end