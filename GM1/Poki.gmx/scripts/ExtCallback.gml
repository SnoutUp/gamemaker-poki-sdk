/// ExtCallback(type, tag);
/// respond to calls from frontend

if(!callback_script("game_callback", 2)) exit;

var type    = argument[0];
var tag     = "";
if (argument_count == 2) tag = argument[1];

if (tag != undefined) {
    Log("Callback: " + string(type) + " with tag:  " + string(tag));
} else {
    Log("Callback: " + string(type));
}

switch (type) {
    case "poki.break.started":
    case "poki.rewarded.started":    
        MusicStopDelayed(20);
    break;
    
    case "poki.rewarded.failed":
        MusicPlay()
    break;
    
    case "poki.break.completed":
        if (tag == "running") {
            GameStart(false);
        }
        MusicPlay();    
    break;
    
    case "poki.rewarded.completed":
        GameReward(tag);
        MusicPlay();        
    break;
}


