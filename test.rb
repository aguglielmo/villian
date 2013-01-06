require 'rest-client'
require 'json'
json = RestClient.get 'http://foobar.com/data'
data = JSON.parse json
if data['numbers'].grep(/^#{callerID}/)
new_call = call "tel:+#{$callerID}", { :network => "SMS" }
new_call.say "You have requested service in the last thirty days"
new_call.hangup
else
transfer 'tel:+14155551212'
end
say 'Thank you and goodbye'
