/// js_callback(type, args);
/// respond to calls from frontend

if(!callback_script("game_callback", 2)) exit;


var type    = argument[0];
var args    = undefined;
if (argument_count == 2) args = argument[1];

Log("Callback: " + string(type));

switch (type) {
    case "ping":
    poki_happy(0.1);
    break;
}


