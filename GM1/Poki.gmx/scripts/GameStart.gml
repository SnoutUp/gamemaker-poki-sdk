/// GameStart(showAd)
/// start gameplay

var _showAd = argument[0];

with (Demo) {
    if (_showAd && isBrowser) {
        /// show poki ad first and pass a tag
        /// to change to the proper state after ad finishes
        poki_break("running");
    } else {
        GameSetState("running");
    }    
}


