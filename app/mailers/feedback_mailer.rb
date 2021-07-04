class FeedbackMailer < ApplicationMailer
	default from: "Computer Science Society <#{ENV['GMAIL_USERNAME']}>"

	def submit_feedback
		@feedback = params[:feedback]

		mail(to: "css@uwindsor.ca", subject: "Feedback Submitted at #{Time.now()}")
	end

end
