class DiscordMessageService 
  DISCORD_API_ENDPOINT = "https://discordapp.com/api"
  DISCORD_ANNOUNCEMENT_CHANNEL_ID = ENV['DISCORD_ANNOUNCEMENT_CHANNEL_ID']
  DISCORD_MOD_CHANNEL_ID = ENV['DISCORD_MOD_CHANNEL_ID']
  SIDE_COLOR = "005696"

  def self.send_message!(channel_id, options)
    options.deep_merge!(default_options)
    RestClient.post(
      "#{DISCORD_API_ENDPOINT}/channels/#{channel_id}/messages",
      options.to_json,
      { content_type: :json, Authorization: "Bot #{ENV['DISCORD_BOT_TOKEN']}" }
    )
  end

  def self.edit_message!(channel_id, message_id, options)
    options.deep_merge!(default_options)
    RestClient.patch(  
      "#{DISCORD_API_ENDPOINT}/channels/#{channel_id}/messages/#{message_id}", 
      options.to_json, 
      { content_type: :json, Authorization: "Bot #{ENV['DISCORD_BOT_TOKEN']}" } 
    ) 
  end

  def self.delete_message!(channel_id, message_id)
    RestClient.delete(
      "#{DISCORD_API_ENDPOINT}/channels/#{channel_id}/messages/#{message_id}",
      { content_type: :json, Authorization: "Bot #{ENV['DISCORD_BOT_TOKEN']}" }
    )
  rescue RestClient::ExceptionWithResponse
  end

  def self.send_message_to_dm!(discord_uid, options)
    options.deep_merge!(default_embed_options) if options[:embed]
    dm_channel = JSON.parse(
        RestClient.post(
        "#{DISCORD_API_ENDPOINT}/users/@me/channels",
        { recipient_id: discord_uid }.to_json,
        { content_type: :json, Authorization: "Bot #{ENV['DISCORD_BOT_TOKEN']}" }
      )
    )
    dm_channel_id = dm_channel["id"]
    RestClient.post(
      "#{DISCORD_API_ENDPOINT}/channels/#{dm_channel_id}/messages",
      options.to_json,
      { content_type: :json, Authorization: "Bot #{ENV['DISCORD_BOT_TOKEN']}" }
    )
  end

  private

  def self.default_embed_options
    {
      embed: {
        thumbnail: { url: "https://css.uwindsor.ca/css-logo-square.png" },
        color: SIDE_COLOR
      }
    }
  end
end
