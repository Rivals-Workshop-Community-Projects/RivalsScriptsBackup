legion.target_health = min(legion.max_health, legion.legion_health + 15 * legion.health_ratio);



#define setMateria(selected) // sets the HITBOX VALUES for a given Materia.
 
for (var i = 0; i < 50; i++){
 
	if get_num_hitboxes(i) for (var j = 1; j <= get_num_hitboxes(i); j++) if (get_hitbox_value(i, j, HG_HITBOX_TYPE) == 1){
 
 
 
		// Section A - wipe a clean slate on all the different attributes used.
 
		reset_hitbox_value(i, j, HG_DAMAGE);
		reset_hitbox_value(i, j, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(i, j, HG_EFFECT);
		reset_hitbox_value(i, j, HG_VISUAL_EFFECT);
 
		var big_effect = (get(i, j, HG_VISUAL_EFFECT) == 304);
 
 
 
		// Section B - apply the new effects for each different Materia.
 
		switch(selected){
 
			case 1: // Fire Materia - more damage
				mul(i, j, HG_DAMAGE, 1.3, true);
				set(i, j, HG_VISUAL_EFFECT, big_effect ? 148 : 3);
				break;
 
			case 2: // Electric Materia - clairen stun
				set(i, j, HG_EFFECT, 11);
				set(i, j, HG_VISUAL_EFFECT, big_effect ? 127 : 124);
				break;
 
			case 3: // Wind Materia - more knockback
				mul(i, j, HG_KNOCKBACK_SCALING, 1.3, false);
				set(i, j, HG_VISUAL_EFFECT, big_effect ? 156 : 194);
				break;
 
			case 4: // Ice Materia - less knockback
				mul(i, j, HG_KNOCKBACK_SCALING, 0.7, true);
				set(i, j, HG_VISUAL_EFFECT, big_effect ? 199 : 26);
				break;
 
			case 5: // Poison Materia - poison (obviously.)
				set(i, j, HG_EFFECT, 10);
				set(i, j, HG_VISUAL_EFFECT, big_effect ? 117 : 116);
				break;
 
		}
 
	}
 
}
 
 
 
#define mul(atk, hbox, idx, ratio, rounded) // multiplies a value by a given ratio.
 
if rounded set(atk, hbox, idx, round(get(atk, hbox, idx) * ratio));
 
else set(atk, hbox, idx, get(atk, hbox, idx) * ratio);
 
 
 
#define set(atk, hbox, idx, val) // sets a value.
 
set_hitbox_value(atk, hbox, idx, val);
 
 
 
#define get(atk, hbox, idx) // returns a value.
 
return get_hitbox_value(atk, hbox, idx);