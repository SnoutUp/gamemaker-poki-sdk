/// GameOver();
/// gameplay over

/// depending on player's performance
/// send a "happy" event to Poki with 

var happyLevel = 0.5;
if (Demo.rewarded) happyLevel = 1;

poki_happy(happyLevel);



GameSetState("over");
