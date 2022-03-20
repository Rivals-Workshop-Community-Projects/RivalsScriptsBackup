shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if (attack == AT_FSPECIAL){
    if (window == 2){
    if (hsp != 0 && !hitpause){
    fspecial_angle = darctan2(-vsp, hsp);
    }
    if (get_player_color( player ) == 0){
    draw_sprite_ext(sprite_get("fspecial_particles_main"), image_index, x, y-20, 1, 1, fspecial_angle, c_white, 1);
    } else draw_sprite_ext(sprite_get("fspecial_particles"), image_index, x, y-20, 1, 1, fspecial_angle, c_white, 1);
    } 
    if (window == 3 or window == 4){
        
    if (get_player_color( player ) == 0){
    draw_sprite_ext(sprite_get("fspecial_particles_main"), image_index, x, y-20, 1, 1, fspecial_angle, c_white, 1);
    } else draw_sprite_ext(sprite_get("fspecial_particles"), image_index, x, y-20, 1, 1, fspecial_angle, c_white, 1);
    }
}
if (attack == AT_USPECIAL_2){
    if (window == 2){
    uspecial_angle = darctan2(-vsp, hsp);
    draw_sprite_ext(uspecial_angle_sprite, image_index, x, y - 22, 1, 1, uspecial_angle, c_white, 1);
}
}
}
shader_end();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == 49){
        
    if (get_player_color( player ) == 8 or get_player_color( player ) == 5 or get_player_color( player ) == 6){
    draw_sprite_ext(sprite_get("final_smash_fx_soul"), image_index, x, y, 1*spr_dir, 1, 0, c_white, 1);
    } else draw_sprite_ext(sprite_get("final_smash_fx"), image_index, x, y, 1*spr_dir, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("final_smash_flash"), image_index, x, y, 99999, 99999, 0, c_white, 1);
    }
}

if (state == PS_RESPAWN && state_timer >= 90){
var col_R = get_color_profile_slot_r( get_player_color(player), 1);
var col_G = get_color_profile_slot_g( get_player_color(player), 1);
var col_B = get_color_profile_slot_b( get_player_color(player), 1);

var col_final = make_color_rgb(col_R, col_G, col_B);
draw_glow(x, y-26, 80, col_final, col_final, 1, 40);
}
#define draw_glow(cx, cy, r, col1, col2, alpha, precision)

draw_primitive_begin(pr_trianglefan);
draw_vertex_color(cx, cy, col1, alpha);
var incre = (2*pi) / abs(precision);

for (var i = 0; i <= 2*pi; i+=incre)
{
    var pos;
    pos = [cos(i)*sign(precision), sin(i)*sign(precision)];
    draw_vertex_color(cx + (pos[0]*r), cy - (pos[1]*r), col2, 0);
}
draw_vertex_color(cx+(r*sign(precision)), cy, col2, 0);
draw_primitive_end();