if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);


if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}



drawtime += 1 


prev_alt = alt;






//define the palette names
var palette_names = [
    
  "Obaboss",
  "Obaboss",
  "Obaboss",
  "Obaboss",
  "Obaboss",
  "Obaboss"

];

var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check

if drawtime < 120 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

draw_debug_text(floor(x)+18,floor(y)+120,"level don't matter");
draw_debug_text(floor(x)+18,floor(y)+140,"more HP vs multiplayers");

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}