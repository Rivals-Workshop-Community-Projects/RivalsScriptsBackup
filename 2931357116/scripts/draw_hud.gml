maskHeader();
maskMidder();
maskFooter();
/*
var mul = 16; //spacing
var hud_dist = 50;
var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

draw_debug_text(temp_x+mul*0, temp_y+mul*-4 - hud_dist, "state = " + string(get_state_name(state)));
draw_debug_text(temp_x+mul*0, temp_y+mul*-3 - hud_dist, "state_timer = " + string(state_timer));
if (
    is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
    state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
{
    if (is_attacking) draw_debug_text(temp_x+mul*0, temp_y+mul*-7 - hud_dist, "attack = " + string(attack_names[attack]));
    if (is_attacking) draw_debug_text(temp_x+mul*0, temp_y+mul*-8 - hud_dist, "attack = " + string(attack));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-6 - hud_dist, "window = " + string(window));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-5 - hud_dist, "window_timer = " + string(window_timer));
}
draw_debug_text(temp_x+mul*0, temp_y+mul*-2 - hud_dist, "x = " + string(x));
draw_debug_text(temp_x+mul*0, temp_y+mul*-1 - hud_dist, "y = " + string(y));
draw_debug_text(temp_x+mul*5, temp_y+mul*-2 - hud_dist, "hsp = " + string(hsp));
draw_debug_text(temp_x+mul*5, temp_y+mul*-1 - hud_dist, "vsp = " + string(vsp));
draw_debug_text(temp_x+mul*0, temp_y+mul*0 - hud_dist, "image_index = " + string(image_index));
//*/


//form name
if "cur_offset" not in self exit;
cur_offset = lerp(cur_offset, form_offset[form], 0.1);
draw_sprite_ext(sprite_get("hud_text_bg"), 0, temp_x + cur_offset, temp_y - 20, 2, 2, 0, c_white, 1);
maskHeader();
draw_sprite_ext(sprite_get("hud_text_mask"), form, temp_x + cur_offset, temp_y - 20, 2, 2, 0, c_white, 1);
maskMidder();
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(temp_x, temp_y - 2, (form? make_color_rgb(100, 100, 100): make_color_rgb(173, 61, 21)), 1);
draw_vertex_color(temp_x + 100, temp_y - 2, (form? make_color_rgb(100, 100, 100): make_color_rgb(173, 61, 21)), 1);
draw_vertex_color(temp_x, temp_y - 20, (form? make_color_rgb(230, 230, 230): make_color_rgb(241, 216, 117)), 1);
draw_vertex_color(temp_x + 100, temp_y - 20, (form? make_color_rgb(230, 230, 230): make_color_rgb(241, 216, 117)), 1);
draw_primitive_end();
maskFooter();
if form{
    draw_sprite_ext(sprite_get("hud_icons"), form - 1, temp_x + 178, temp_y - 66, 2, 2, 0, c_white, 1);
}
//hud
draw_sprite_ext(sprite_get("hud"), 0, temp_x + 92, temp_y - 34, 2, 2, 0, c_white, 1);
//gauge bar
maskHeader();
draw_sprite_part_ext(sprite_get("hud_bar_mask"), 0, 0, 0, (gauge_val < 5000? (gauge_val%1000)/1000 * 42: 42), 30, temp_x + 96, temp_y - 30, 2, 2, c_white, 1);
maskMidder();
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(temp_x + 96, temp_y - 30, (form? make_color_rgb(100, 100, 100): make_color_rgb(173, 61, 21)), 1);
draw_vertex_color(temp_x + 96, temp_y - 2, (form? make_color_rgb(100, 100, 100): make_color_rgb(173, 61, 21)), 1);
draw_vertex_color(temp_x + 180, temp_y - 30, (form? make_color_rgb(230, 230, 230): make_color_rgb(241, 216, 117)), 1);
draw_vertex_color(temp_x + 180, temp_y - 2, (form? make_color_rgb(230, 230, 230): make_color_rgb(241, 216, 117)), 1);
draw_primitive_end();
maskFooter();
//numbers
maskHeader();
draw_sprite_ext(sprite_get("hud_numbers"), floor(gauge_val/1000), temp_x + 172, temp_y - 28, 2, 2, 0, c_white, 1);
maskMidder();
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(temp_x + 172, temp_y - 2, (form? make_color_rgb(100, 100, 100): make_color_rgb(173, 61, 21)), 1);
draw_vertex_color(temp_x + 202, temp_y - 2, (form? make_color_rgb(100, 100, 100): make_color_rgb(173, 61, 21)), 1);
draw_vertex_color(temp_x + 172, temp_y - 28, (form? make_color_rgb(230, 230, 230): make_color_rgb(241, 216, 117)), 1);
draw_vertex_color(temp_x + 202, temp_y - 28, (form? make_color_rgb(230, 230, 230): make_color_rgb(241, 216, 117)), 1);
draw_primitive_end();
maskFooter();
//max
if gauge_val >= 5000 draw_sprite_ext(sprite_get("hud_max"), form, temp_x + 106, temp_y - 26, 2, 2, 0, c_white, 1);

//particle
particle_dist += (!form && particle_dist < 20? 2: (particle_dist? -2: 0));
if particle_dist{
    particle_angle += (particle_angle < 350? 5: -355);
    for(var h = 0; h < floor(gauge_val/1000); h++){
        draw_sprite_ext(sprite_get("hud_particle"), 0, particle_dist * dcos(particle_angle + 360/ floor(gauge_val/1000) * h) + 187 + temp_x, particle_dist * dsin(particle_angle + 360/ floor(gauge_val/1000) * h) + temp_y - 15, 2, 2, particle_angle + 360/ floor(gauge_val/1000) * h, c_white, 1);
    }
}

//particle effects
if !form && prev_form{
    for(var l = 0; l < 26; l++){
        var part = instance_create(floor(temp_x + view_get_xview() + l*3 + 100), floor(temp_y - l%6 - 2 + view_get_yview()), "obj_article2");
        part.part_x = temp_x + l*3 + 100;
        part.part_y = temp_y - l%6 - 2;
        part.alpha_change = 0.02 + random_func_2(l, 5, 1)/100;
        part.movement_speed = 2 + random_func_2(l, 5, 0);
        part.image_alpha = 0;
        part.hud_particle = 1;
    }
}
with obj_article2 if player_id = other && "hud_particle" in self && hud_particle{
    draw_sprite_ext(sprite_get("hud_particle"), 0, x, y, 2, 2, 0, c_white, real_alpha);
}
if form && !prev_form{
    form_fx = 30;
}
if form_fx form_fx--;
draw_sprite_ext(sprite_get("hud_light"), 0, temp_x - 64, temp_y - 49, 2, 2, 0, c_white, form_fx/30);
prev_form = form;

//command deck
if mp_alpha > 0{
    draw_sprite_ext(sprite_get("command_deck"), (deck_antimer = 0? deck_val: (deck_antimer < 90? deck_val: (deck_val+2)%3)), temp_x + 2, temp_y - 40 -10*dsin(deck_antimer)*(deck_antimer < 90? -1: 1), 2, 2, 0, c_white, mp_alpha);
    draw_sprite_ext(sprite_get("command_deck"), (deck_antimer = 0? (deck_val+2): (deck_antimer < 90? (deck_val+2)%3: deck_val)), temp_x + 2, temp_y - 40 -10*dsin(deck_antimer)*(deck_antimer < 90? 1: -1), 2, 2, 0, c_white, mp_alpha);
}

//dashes
if dash_alpha > 0{
    for(var h = 0; h <= dashes - 1; h++){
        draw_sprite_ext(sprite_get("master_dash"), 0, temp_x + 24 * h + 14, temp_y - 29, 1, 1, 0, c_white, dash_alpha);
        if h = dashes - 1 draw_sprite_ext(sprite_get("master_dash_fx"), 0, temp_x + 24 * h + 14, temp_y - 29, 1, 1, 0, c_white, (dash_alpha/1) * dsin(get_gameplay_time()%60*6));
    }
    fx_value = h - 1;
    with obj_article2 if player_id = other && "hud_particle" in self && particle_type == 5 draw_sprite_ext(sprite_get("master_dash"), 0, other.temp_x + 24 * other.fx_value + 14, other.temp_y - 29, image_xscale, image_yscale, 0, c_white, image_alpha * other.dash_alpha);
    prev_dashes = dashes;
}

//training cue
if get_match_setting(SET_PRACTICE) && training_alpha{
    textDraw(temp_x - 10, temp_y - 97, "fName", c_white, 16, 300, 1, 1, training_alpha/60, "taunt + up/down: increase drive" + chr(10) + "taunt + parry: advance form" + chr(10) + "taunt + jump: regress form" + chr(10) + "taunt + special: disable drive decay", c_black, fa_left);
}


#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);


#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);


#define maskFooter()

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c, text_halign)

draw_set_font(asset_get(argument[2]));
draw_set_halign(argument[11]);

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] +  argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
