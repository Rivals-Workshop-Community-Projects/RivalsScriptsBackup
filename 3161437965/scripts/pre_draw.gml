//pre_draw.gml

gpu_set_fog(true, save_flash_col, 0, 1);
for (var i = trail_draw_size-1; i > 0; i--)
{
    var pos = (trail_cycle + i) % trail_size;

    draw_sprite_ext(
        trail_vars[pos].spr,
        trail_vars[pos].img,
        floor(trail_vars[pos].x),
        floor(trail_vars[pos].y),
        trail_vars[pos].xscale,
        trail_vars[pos].yscale,
        trail_vars[pos].rot,
        c_white, (trail_draw_size - i)/trail_draw_size
    );
}
gpu_set_fog(false, c_red, 1, 0);


if array_length_1d(intro_alt_vfx_array) > 0 {

    for (var i = 0; i < array_length_1d(intro_alt_vfx_array); ++i)
    {
        var obj = intro_alt_vfx_array[i];
        if("is_cat" in obj)
        draw_sprite_ext(obj.sprite_index, obj.timer/4, obj.x, obj.y, obj.spr_dir*(.5+obj.timer/20), (.5+obj.timer/20), obj.rot, c_white, 1 - obj.timer/obj.timerMax);
        if("is_khep" in obj){
        	gpu_set_alphatestenable(true);
        	gpu_set_fog(1, obj.col, 0, 1);
        	draw_sprite_ext(obj.sprite_index, obj.timer/5, obj.x, obj.y, obj.spr_dir*(2+obj.timer/3), (2+obj.timer/3), obj.rot + obj.timer, c_white, 1.2 - (obj.timer/obj.timerMax) * 1.2);
        }
        gpu_set_fog(0, c_white, 0, 0);
		gpu_set_alphatestenable(false);
    }

}

if(get_player_color(player) == 28){
	gpu_set_alphatestenable(true);
    for (var i = 0; i < array_length_1d(galaxy_vfx_array); ++i)
    {
        var obj = galaxy_vfx_array[i];
        gpu_set_fog(1, obj.col, 0, 1);
        if(!obj.orig_player_id.visible)
        	draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+obj.orig_player_id.small_sprites), 1+obj.orig_player_id.small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
    }
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
    
    if(galaxy_vfx_timer){
        FlagPart(make_colour_rgb(85, 205, 252), sprite_height, sprite_yoffset); // mayablue
        FlagPart(make_colour_rgb(247, 168, 223), char_height/5*2, char_height/5*2.5); // pink
        FlagPart(c_white, char_height/5, char_height/5*2);
        gpu_set_fog(0, c_white, 0, 0);
    }
}

if(get_player_color(player) == 29){
	draw_sprite_ext(sprite_get("chipi_chapa"), chippi_animate_timer/2, view_get_xview(), view_get_yview(), 4, 4, 0, c_white, min(galaxy_vfx_timer/40, .5));
}

if(attack == AT_TAUNT_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    var alph = (lobotomy_timer < 360 ? lobotomy_timer/3600 : .25)
    draw_set_alpha(alph);
    draw_rectangle_color(0, 0, room_width, room_height, rainbow_color, rainbow_color, rainbow_color, rainbow_color, false);
    draw_set_alpha(1);
}

if(state == PS_SPAWN && state_timer < 85 && !has_spawned){
    draw_sprite_ext(sprite_get("hud_savemeter"), 0, x, y, 2, 2, 0, c_white, 0.5);
    draw_sprite_part_ext(
        sprite_get("hud_savemeter"), 1, 0, 0,
        lerp(0, 1, (85-state_timer)/75) * sprite_get_width(sprite_get("hud_savemeter")),
        21, x - 55, y, 2, 2, c_white, 1
    );
}

if(state == PS_SPAWN && state_timer < 85 && !has_spawned){
    draw_sprite_ext(sprite_get("artc_dspec"), state_timer/5, x, y - 32, 2, 2, 2*state_timer, c_white, 1);
}

if(juiced_up){
    var col = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 7), get_color_profile_slot_g(get_player_color(player), 7), get_color_profile_slot_b(get_player_color(player), 7));
    draw_outline(col);
    draw_outline(col);
}


#define draw_outline(col)

gpu_set_alphatestenable(true);
gpu_set_fog(1, col, 0, 1);

for (i = 0; i < 2; i++){
	var rand_x = random_func(i + 00, 5, true) - 2;
	var rand_y = random_func(i + 10, 5, true) - 2;
	
	draw_sprite_ext(sprite_index, image_index, x + rand_x - clamp(hsp, -15, 15) * (i + 1), y + rand_y - vsp * (i + 1) + 4 + draw_y, image_xscale * 1.1, image_yscale * 1.1, spr_angle, c_white, 0.5);
}
	
gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

#define FlagPart(_colour, _height, _xLoc) // Code by Karu
{
    gpu_set_fog(1, _colour, 0, 1);
    for (var i = -1; i < 2; ++i) for (var j = -1; j < 2; ++j) draw_sprite_general(sprite_index, image_index, 0, sprite_yoffset-_xLoc, abs(sprite_width), min(max(sprite_height-sprite_yoffset+_xLoc,0),_height),
        i*2+x+draw_x+(dsin(spr_angle)*(-_xLoc)+dcos(spr_angle)*(-sprite_xoffset))*(small_sprites + 1),
        j*2+y+draw_y+(dcos(spr_angle)*(-_xLoc)-dsin(spr_angle)*(-sprite_xoffset))*(small_sprites + 1),
        spr_dir*(small_sprites + 1), (small_sprites + 1),
        spr_angle, c_white, c_white, c_white, c_white, galaxy_vfx_timer/20);
}