//debug-draw


//draw_debug_text(x,y,"timer:" + string(chargeCounter));
//draw_debug_text(x,y,"flash:" + string(flashVisible));
//draw_debug_text(x,y,"charge used" + string(chargeSpent));

if get_match_setting(SET_HITBOX_VIS) with (pHitBox) {
  if (attack == AT_NSPECIAL && player_id == other) {
    draw_sprite_ext(mask_index,image_index,x,y,spr_dir,1,0,-1,0.5);
  }
}

if get_match_setting(SET_HITBOX_VIS) with (pHitBox) {
  if (attack == AT_DSPECIAL && player_id == other) {
    draw_sprite_ext(mask_index,image_index,x,y,spr_dir,1,0,-1,0.5);
  }
}
//draw_debug_text(x,y,"proj x: " + string(ftilt_x));

//draw_debug_text(x,y,"x" + string (obj_article1.homing));

//draw_debug_text(x,y,"id: " + string(gravigahit_id));

/*
with (asset_get("obj_article3")){
    if (player_id == other.id){
        draw_debug_text(x,y, string(id));
    }
}

draw_debug_text(x,y,"id: " + string(id));
*/