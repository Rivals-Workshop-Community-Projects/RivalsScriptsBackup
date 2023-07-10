alt_cur = get_player_color("alt_fix" in self? alt_fix: player);

shader_end();
prepare_shader();
maskHeader();
for(var e = 0; e < 3; e++){
    draw_sprite_ext(sprite_get("body_" + string(e) + (e == 2 && !alt_cur? "b": "")), css_angles[e]/10, x + offsets[0], y + offsets[1], 2, 2, 0, c_white, spr_alpha);
}
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(x + 10, y + 10, c_white, 0);
draw_vertex_color(x - 100, y + 10, c_white, 0);
draw_vertex_color(x + 10, y + 152, c_white, 0);
draw_vertex_color(x - 100, y + 201, c_white, 0);
draw_vertex_color(x + 210, y + 152, c_white, 0);
draw_vertex_color(x + 300, y + 201, c_white, 0);
draw_vertex_color(x + 260, y + 10, c_white, 0);
draw_vertex_color(x + 300, y + 10, c_white, 0);
draw_primitive_end();
maskMidder();
shader_start();
for(var e = 0; e < 3; e++){
    draw_sprite_ext(sprite_get("body_" + string(e) + (e == 2 && !alt_cur? "b": "")), css_angles[e]/10, x + offsets[0], y + offsets[1], 2, 2, 0, c_white, 1);
}
shader_end();
maskFooter();

prepare_shader();
maskHeader();
draw_sprite_ext(sprite_get("css_legs"), 0, x + offsets[0], y + offsets[1], 1, 1, 0, c_white, spr_alpha);
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(x + 10, y + 10, c_white, 0);
draw_vertex_color(x - 40, y + 10, c_white, 0);
draw_vertex_color(x + 10, y + 152, c_white, 0);
draw_vertex_color(x - 40, y + 202, c_white, 0);
draw_vertex_color(x + 210, y + 152, c_white, 0);
draw_vertex_color(x + 260, y + 202, c_white, 0);
draw_vertex_color(x + 260, y + 10, c_white, 0);
draw_vertex_color(x + 210, y + 10, c_white, 0);
draw_primitive_end();
maskMidder();
shader_start();
draw_sprite_ext(sprite_get("css_legs"), 0, x + offsets[0], y + offsets[1], 1, 1, 0, c_white, 1);
shader_end();
maskFooter();

if (alt_cur == 14) draw_sprite(sprite_get("css_icons"), 9, x + 174, y + 108);

var col = make_color_rgb(get_color_profile_slot_r((alt_cur == 0? 1: alt_cur), 7), get_color_profile_slot_g((alt_cur == 0? 1: alt_cur), 7), get_color_profile_slot_b((alt_cur == 0? 1: alt_cur), 7));
textDraw(x + 10 + text_offset, y + 44, "fName", col, 10000, 100000, fa_left, 1, 1, txt_alpha, alt_names[alt_cur], 0, c_black);

//button
draw_sprite_ext(sprite_get("css_button"), voicebutton, x + (player = 0? 80: (get_player_hud_color(onlpl) == 8421504? 58: 74)), y + (player == 0? 12: 178), 2, 2, 0, c_white, 1);

//template
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

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
	draw_rectangle_color(0, 0, 1000, 600, c_white, c_white, c_white, c_white, 0);
	draw_set_alpha(1);
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}


#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool, outline_c)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c, outline_c, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}