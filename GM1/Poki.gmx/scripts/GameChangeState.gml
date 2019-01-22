/// GameChangeState(newState, showAd);

var _newState   = argument[0];
var _showAd     = false;
if (argument_count == 2) _showAd = argument[1];

with (Demo) {
    statePrev = state;
    state = _newState;
    
    switch (state) {
        case "running":
            if (_showAd) {
                poki_break("running");
            }
        break;
    }
}
