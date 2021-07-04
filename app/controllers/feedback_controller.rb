class FeedbackController < ApplicationController

	# GET /feedback
	def index
	end

	# POST /feedback
	def create
		@feedback = feedback_params
		DiscordMessageService.send_message!(DiscordMessageService::DISCORD_MOD_CHANNEL_ID, build_feedback_message(@feedback))
		FeedbackMailer.with(feedback: @feedback).submit_feedback.deliver_now
	end

	private

	def feedback_params
		params.require(:feedback)
	end

	def build_feedback_message(feedback)
	{
		content: "Feedback submitted at #{Time.now()}\n#{feedback}"
	}
	end
end
