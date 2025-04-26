//in article#_init.gml

//sprite_index = sprite_get("moon");//this is the sprite
mask_index = sprite_get("a_notebl_hbox") 

image_xscale = 1; //this is the horizontal scale
image_yscale = 1; //this is the vertical scale
image_alpha = 1; //this can alter the sprite alpha (transparency)
image_angle = 0; //this can alter the sprite angle (rotation)

init = 0;

state = 0;
state_timer = 0;
state_end = 0;
active_time = 0;

free = false;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

//
owner = player;

//
bounce_speed = -13;
bounce_speed_uspec = -11;
bounce_speed_nspec = -16;

bouncing_ninji = noone;

player_id.noteblock_co_counter++
noteblock_co = c_white

switch (player_id.noteblock_co_counter % 5) {
    case 0: noteblock_co = c_white; break;
    case 1: noteblock_co = make_color_rgb(134, 238, 89); break;
    case 2: noteblock_co = make_color_rgb(134, 211, 254); break;
    case 3: noteblock_co = make_color_rgb(254, 234, 61); break;
    case 4: noteblock_co = make_color_rgb(254, 104, 59); break;
}
