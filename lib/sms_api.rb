# encoding: utf-8
require 'rubygems'
require 'plivo'
include Plivo

class SmsApi
	mattr_accessor :from_id, :message, :campaign_id, :track_url

	def initialize(attributes = {})
    attributes.each { |name, value| send("#{name}=", value) }
	end

	def send_sms(user)
		plivo_api = RestAPI.new(ENV['PLIVO_AUTH_ID'], ENV['PLIVO_AUTH_TOKEN'])
		from = From.find(from_id).from_no
		# byebug
		dst = Campaign.find(campaign_id).customers.map(&:phone_no).join('<')
		params = {
		    'src' => from,
		    'to' => from,
		    'dst' => dst,
		    'text' => message
		}
		save(plivo_api.send_message(params), user)
	end

	def save(response, user)
		if response[1]['error'].present?
			return response[1]['error']
		else
			track_url_id =  TrackUrl.find_by_short_url track_url
			sms_send = user.sms_sends.build(track_url: track_url_id, campaign_id: campaign_id, message: message, message_uuid: response[1]['message_uuid'])
			if sms_send.save!
				return true
			else
				return sms_send.errors.full_messages.join(', ')
			end
		end
	end

end