/*draw_debug_text( x -10+30, y - 20,"Object_ID: " + string(self));
draw_debug_text( x -10+30, y + 20,"STATE " + string(state));
 draw_debug_text( x -10+30, y + 40,"STATE_TIMER " + string(state_timer));
 //draw_debug_text( x -10+30, y + 60,"WHERE THE FUCK AM I LOOKING??: " + string(spr_dir));
  draw_debug_text( x -10+30, y + 80,"ANIM_TIMER: " + string(anim_timer));
  /*draw_debug_text( x -10+30, y + 100,"rishi hitbox id: " + string(rishi_hitbox));
  draw_debug_text( x -10+30, y + 120,"Freeze frames " + string(freeze));
    draw_debug_text( x -10+30, y -40,"HSP " + string(hsp));
      draw_debug_text( x -10+30, y - 60,"VSP " + string(vsp));


/*draw_debug_text( x -10+30, y - 20,"Object_ID: " + string(self));
draw_debug_text( x -10+30, y - 40,"Hitbox_ID: " + string(hboxghost));
draw_debug_text( x -40+30, y - 60,"Chi: " + string(chi));
draw_debug_text( x +40+30, y - 60,"Chi_cd: " + string(chi_cd));
draw_debug_text( x +40+30+122, y - 60,"Stun timer: " + string(stun_timer));

if (explosion_cd<180){
    draw_debug_text( x +40, y - 80,"explosion_cd: " + string(explosion_cd));
}
if (explosion_cd>180&&chi>0){
    draw_debug_text( x +40, y - 80,"explosion_cd: READY ");
 }*/
 
// if(get_match_setting(SET_HITBOX_VIS) && sprite_index == sprite_get("spinning_axe2")){
//     draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, .5);
// }

if((was_parried || was_hit || normal_return) && !hitstop){
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_black, .5);
}