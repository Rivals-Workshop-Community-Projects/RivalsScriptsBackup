
if archen_dspecial_damage > 0 && archen_dspecial_cooldown <= 0 {
	with (other_player_id) {var sweatsprite = sprite_get("enemyendeavered");}
	draw_sprite_ext(sweatsprite,archen_dspecial_damage*1.7,x,y-char_height,spr_dir,1,0,c_white,1)
}


// ARCHEN_IS_VALID = true;

// if (state == PS_DEAD || get_player_stocks(player) == 0) {
//     ARCHEN_IS_VALID = false;
// }

// draw_debug_text(x, y - 120, string(ARCHEN_IS_VALID) + ";" + string(player) + ";" + string(get_player_damage(player)));
