shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
  switch(attack){
    case AT_USTRONG_2:
            draw_sprite_ext(sprite_get("ustrong2_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
            draw_sprite_ext(sprite_get("ustrong2_white"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
        break;
    case AT_FSTRONG_2:
            draw_sprite_ext(sprite_get("fstrong2_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
            draw_sprite_ext(sprite_get("fstrong2_white"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
        break;
    case AT_DSTRONG_2:
            draw_sprite_ext(sprite_get("dstrong2_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
            draw_sprite_ext(sprite_get("dstrong2_white"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
        break;
    case AT_NSPECIAL:
            draw_sprite_ext(sprite_get("nspecial_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
            draw_sprite_ext(sprite_get("nspecial_white"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
        break;
    case AT_FSPECIAL:
            draw_sprite_ext(sprite_get("fspecial_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
        break;
    case AT_USPECIAL_2:
            draw_sprite_ext(sprite_get("uspecial2_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
            draw_sprite_ext(sprite_get("uspecial2_white"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
        break;
    case AT_TAUNT:
            draw_sprite_ext(sprite_get("taunt_plasma"), image_index, x, y, spr_dir * 2, 2, 0, penny_charge_col, 1);
            if spr_dir == -1{
                var holo_xx = x - 54;
            } else {
                var holo_xx = x + 0;
            }
            draw_sprite_ext(penny_taunt_spr, image_index, holo_xx, y - 8, 2, 2, 0, penny_charge_col, 1);
            draw_sprite_ext(penny_taunt_spr_white, image_index, holo_xx, y - 8, 2, 2, 0, c_white, 1);
        break;
    default:
        break;
  }
}
shader_end();

// Particle Doodles
if (ds_list_size(penny_particles) > 0) {
    for (var i = 0; i < ds_list_size(penny_particles); i++) {
        var ap = penny_particles[| i];
        var static_image = get_gameplay_time() / 6;
        if (ap.shader == true) shader_start();
        draw_sprite_ext(ap.sprite,static_image,ap.x,ap.y,1,1,0,-1,ap.alpha);
        if (ap.shader == true) shader_end();
    }
}

if state == PS_PARRY{
    draw_sprite_ext(sprite_get("parry_shield"), image_index, x, y, 2 * spr_dir, 2, 0, penny_charge_col, .75);
}
/*
if wearing_hat && sprite_index == sprite_get("idle"){
  draw_sprite_ext(sprite_get("halloweencostume"), image_index, x, y, spr_dir, 1, 0, -1, 1);
}*/