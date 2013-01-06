require 'rest-client'
require 'json'
json = RestClient.get 'https://raw.github.com/aguglielmo/villian/master/sampledata'
data = JSON.parse json
if data['numbers'].grep(/^#{callerID}/)
new_call = call "tel:+#{$callerID}", { :network => "SMS", :callerID=>"14809996171"
 }
new_call.say "You have requested service in the last thirty days, please install this app and our staff will be in touch in less than 5 minutes, thruview.net "
new_call.hangup
else
transfer 'tel:+14155551212'
end
say 'Thank you and goodbye'
