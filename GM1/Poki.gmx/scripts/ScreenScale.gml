/// ScreenScale(width, height);

var _width  = argument[0];
var _height = argument[1];

view_wport[0] = _width;
view_hport[0] = _height;

var ratio = (view_wport[0] / view_hport[0]);

view_wview[0] = room_width;
view_hview[0] = room_width / ratio;

display_set_gui_size(view_wport[0], view_hport[0]);

with (Demo) {
    prevWidth   = _width;
    prevHeight  = _height;
}


with (Button) {
    image_index = 0;
}

poki_canvas_update();
