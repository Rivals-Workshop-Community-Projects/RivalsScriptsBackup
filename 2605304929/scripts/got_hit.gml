//got_hit.gml
// Declare local variables for use in this script
var element_applied_player = hit_player_obj;
var hitbox_type;
var hitbox_priority;
var hitbox_knockback;
var hitbox_damage;

// extract variables from opponent hitbox
with(enemy_hitboxID){
    hitbox_type = type;	//1 = Physical attack 2 = Projectile
    hitbox_knockback = kb_value;
    hitbox_damage = damage;
    hitbox_priority = hit_priority;
}

// Filter hitboxes to detect removing the mark. 
if(element_applied_player.status_effect_water == true){
    if(
	hitbox_type == 1 && // Physical Hitbox
    hitbox_knockback > 0 && // Has any knockback
    hitbox_damage > 0 &&  // Has any damage
    hitbox_priority > 0 // Has over zero priority
    ){
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

// Give back dspecial on being hit
move_cooldown[AT_DSPECIAL_AIR] = 0;

// Give back Fspecial Gannoncide
ganoncide_preventor_available_flag = 1;