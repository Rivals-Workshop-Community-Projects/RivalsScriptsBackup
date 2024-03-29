//post-draw

if holding_wt {
    switch state {
        case PS_JUMPSQUAT: wt_sprite = sprite_get("jumpstart_wt") break;
        case PS_FIRST_JUMP: if state_timer > 0 {wt_sprite = sprite_get("jump_wt")} break;
        case PS_LAND: case PS_PRATLAND: wt_sprite = sprite_get("land_wt") break;
        case PS_LANDING_LAG: wt_sprite = sprite_get("landinglag_wt") break;
        case PS_IDLE_AIR: wt_sprite = sprite_get("jump_wt") break;
    }
    
    if sprite_index == sprite_get("roll_forward") {wt_sprite = sprite_get("roll_forward_wt")}
    else if sprite_index == sprite_get("roll_backward") {wt_sprite = sprite_get("roll_backward_wt")}
    else if sprite_index == sprite_get("parry") && parry_cooldown == 0 {wt_sprite = sprite_get("parry_wt")}
    else if sprite_index == sprite_get("airdodge") {wt_sprite = sprite_get("airdodge_wt")}
    else if sprite_index == sprite_get("waveland") {wt_sprite = sprite_get("waveland_wt")}
    else if sprite_index == sprite_get("doublejump") {wt_sprite = sprite_get("doublejump_wt")}
    else if sprite_index == sprite_get("walljump") {wt_sprite = sprite_get("walljump_wt")}
    else if sprite_index == sprite_get("tech") {wt_sprite = sprite_get("tech_wt")}
    
    shader_start();
    draw_sprite_ext(wt_sprite, image_index, x, y, spr_dir, 1, 0, c_white, 1);
    shader_end();
} else {
    if attack == AT_DSPECIAL {
        shader_start();
    }
    draw_sprite_ext(non_sprite, image_index, x, y, spr_dir, 1, 0, c_white, 1);
    if attack == AT_DSPECIAL {
        shader_end();
    }
}


if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    if attack == AT_FSPECIAL && window == 2 && window_timer < 6 { //fspecial reverse hit
        draw_sprite(sprite_get("fspecial_sweetspot_vfx"), floor(window_timer/2), x - 30*spr_dir, y - 8);
    } else if attack == AT_BAIR && window == 2 && window_timer < 2 { //bair sweetspot vfx
        draw_sprite(sprite_get("fspecial_sweetspot_vfx"), 0, x - 44*spr_dir, y - 34);
    }
}

if goose_id != undefined && instance_exists(goose_id) && goose_id.visible {
    draw_sprite_ext(sprite_get("indicator"), 0, goose_id.x, goose_id.y - 66, 1, 1, 0, c_gray, 1);
    draw_set_font(asset_get("roundFont"));
    draw_set_halign(fa_center);
    draw_text_colour_outline(goose_id.x, goose_id.y - 100, string(goose_id.damage) + "%", c_white,c_white,1,c_black,c_black,1,2,4,1,1,0);
    
    with goose_id {
        if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
            if attack == AT_BAIR && window == 2 && window_timer < 2 { //bair sweetspot vfx
                draw_sprite(sprite_get("fspecial_sweetspot_vfx"), 0, x - 44*spr_dir, y - 34);
            }
        }
    }
}
#define draw_text_colour_outline
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
var i;
for (i = 0; i < 360; i += 360 / argument10){
    draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);