alt_cur = get_player_color(player);
if(alt_prev != alt_cur){
    portrait = random_func(0, 4, true);
	if(portrait > 3){
	    portrait = 0;
	} 
	set_victory_sidebar(sprite_get("result_small_"+string(portrait)));
	css_draw_time = 0;
	alt_prev = alt_cur;
}

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();
draw_sprite_ext(sprite_get("charselectbg"),0,x+8,y+8,2,2,0,-1,1);

shader_start();
draw_sprite_ext(sprite_get("charselect"),portrait,x+8,y+8,2,2,0,-1,1);

shader_end();
prepare_shader(); //resets shader

muno_event_type = 6;
user_event(14);
if(get_player_hud_color(player) != 8421504){
    draw_sprite_ext(sprite_get("css_button"), voicebutton, x+voice_button_pos[0], y+voice_button_pos[1], 2, 2, 0, c_white, 1);
}

//functions by supersonic
#define prepare_shader()
{
    //init_shader(); fails to generate these variables for some reason,
    //so we assign them to these completely equivalent values
    //this allows shader_start() to be run in css_draw.gml!!!
    static_colorB = colorB;
    static_colorO = colorO;
    static_colorT = colorT;
    static_colorI = colorI;
    init_shader();
}
#define set_outline(r, g, b)
{
    //we use this function to add custom outlines to our character's portrait
    var start = 8*4; //outline
    static_colorO[start] = r/255;
    static_colorO[start+1] = g/255;
    static_colorO[start+2] = b/255;
}