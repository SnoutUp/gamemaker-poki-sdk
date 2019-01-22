/// GameSetState(newState);

var _newState = argument[0];

Log("Game: " + string(_newState));

with (Demo) {

    state = _newState;
    
    switch (state) {
        case "running":
            poki_gameplay_start();
        break;
        
        case "paused":
            poki_gameplay_stop();        
        break;
        
        case "over":      
            poki_gameplay_stop();      
            rewarded = false;          
        break;
    }
}
