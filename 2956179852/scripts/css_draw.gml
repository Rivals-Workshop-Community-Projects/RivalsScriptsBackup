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
draw_sprite_ext(sprite_get("css_button"), voicebutton, x+voice_button_pos[0], y+voice_button_pos[1], 2, 2, 0, c_white, 1);

gpu_set_fog(true, c_white, -1, 9999);
draw_sprite_ext(sprite_get("charselect"),portrait,x+8,y+8,2,2,0,-1,portrait_flash/20);
gpu_set_fog(false, c_white, 1, 0);

cpu_hover_draw(); 
// you can put this anywhere above your #defines.
// i would recommend ending the shader first (shader_end();)

//as always, #defines go at the bottom of the script.
#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}
#define rectDraw(x1, y1, width, height, color)
draw_rectangle_color(x1, y1, x1 + width - 1, y1 + height - 1, color, color, color, color, false);
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

x1 = round(x1);
y1 = round(y1);

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
	for (i = -1; i < 2; i++) {
		for (j = -1; j < 2; j++) {
			draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		}
	}
}

if alpha > 0.01 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);
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