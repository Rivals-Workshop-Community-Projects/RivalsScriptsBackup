if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);


//Display Background
draw_sprite_ext(sprite_get("_css_charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

//Display Face
draw_sprite_ext(sprite_get("_css_charselect"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

if alt == 4 {
    shader_end();
    draw_sprite_ext(sprite_get("_css_ani"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
}

user_event(12);
