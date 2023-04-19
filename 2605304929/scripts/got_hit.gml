//got_hit.gml
// Subtract element code
var element_applied_player = hit_player_obj;
var hitbox_type;

with(enemy_hitboxID){
    hitbox_type = type;	//1 = Physical attack 2 = Projectile
}

Reduce_Element_Build_Up(hitbox_type,element_applied_player);

// Give back dspecial on being hit
move_cooldown[AT_DSPECIAL_AIR] = 0;

// Give back Fspecial Gannoncide
ganoncide_preventor_available_flag = 1;

/*
// Reset hud for Dthrow
if(attack == AT_DTHROW && char_height != 52){ //&& window >= 1 && window < 5
    grabbed_player_obj.char_height = grabbed_player_obj.char_height - 70;
	char_height = 52;
}
*/
#define Reduce_Element_Build_Up(hitbox_type,element_applied_player)
{
	if(element_applied_player.status_effect_water == true)
	    if(hitbox_type == 2){
	    return;
	    }
	    else{
	    	// Remove mark
	        with(element_applied_player){
	            status_effect_water = false
	        }
	        // Spawn Disperse Effect
	    	hitfx_mark_disperse_obj = spawn_hit_fx(
	    		element_applied_player.x,
	    		element_applied_player.y - floor(element_applied_player.char_height / 2),
	    		hitfx_mark_disperse);
	    	// Powerdown sound effect play
	    	sound_play(sound_get("power_down" ),false,noone,1,1.5);
	    }
}