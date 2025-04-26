// pre_draw.gml
// this script draws sprites BEHIND the player character

// respawn plat
if ((state == PS_RESPAWN) || ((attack == AT_TAUNT || attack == AT_TAUNT_2) && free)) && !place_meeting(x,y+4,(asset_get("par_block")))
&&
(sprite_index == sprite_get("idle") || sprite_index == sprite_get("idle_racer") || sprite_index == sprite_get("idle_kooper") || sprite_index == sprite_get("idle_koops")
|| sprite_index == sprite_get("taunt") || sprite_index == sprite_get("taunt_racer") || sprite_index == sprite_get("taunt_racer_shell")
|| sprite_index == sprite_get("taunt_kooper") || sprite_index == sprite_get("taunt_kooper_shell")
|| sprite_index == sprite_get("taunt_koops") || sprite_index == sprite_get("taunt_koops_shell")
|| sprite_index == sprite_get("taunt") || sprite_index == sprite_get("taunt_shell")){
    draw_sprite(sprite_get("plat_real"), (get_gameplay_time() / 6), x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}