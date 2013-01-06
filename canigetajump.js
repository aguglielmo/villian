answer();
event=ask("Hi, This is a call from Plugshare, can a user recharge at your place?, their car I mean?", {
attempts:3,
timeout:7,
choices:"yes, no",
onChoice:function(event) {
say("You said" + event.choice);
},
onBadChoice: function(event) {
say("I'm sorry, I didn't understand what you said.");
},
onError:function(event) {
log("There was an error");
},
onHangup:function(event) {
log("The user hungup");
},
onTimeout:function(event) {
say("I'm sorry, I didn't hear anything.");
}
} );
