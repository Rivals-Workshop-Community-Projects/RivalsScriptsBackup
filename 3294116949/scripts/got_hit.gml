//got_hit

if (move_cooldown[AT_FSPECIAL] > 0){
        move_cooldown[AT_FSPECIAL] = 0;
}

// lamp_bounce=false;

if(state_cat == SC_HITSTUN && instance_exists(axe) && (axe.state < 3 || (axe.state == 3 && axe.returning))){
    with(axe){
        was_hit = true;
        // print("not hit by EL FENNEK");
        if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
        returning = false;
        state_timer=0;
        state = 3;
    	is_hittable = false;
    	ignores_walls = true;
    	sprite_index = sprite_get("spinning_axe2");
    	return_magnintude = 0;
    	return_dir = point_direction(x, y, player_id.x, player_id.y);
    	if(ignited){
    		axe_hitbox = create_hitbox(AT_NSPECIAL, 5, x, y);
			axe_hitbox.spr_dir = spr_dir;
    	}
    }
    if(axe.ignited) with(oPlayer) if self != other && hit_player_obj == other can_be_hit[other.player] = 0;
}

// if (instance_exists(axe)){
//     if(instance_exists(axe.axe_hitbox)){
//     instance_destroy(axe.axe_hitbox);
// }

// instance_exists(axe.axe_hitbox_return){
//     instance_destroy(axe.axe_hitbox_return);
// }
//     instance_destroy(axe); //Puts the axe on the state where it gets destroyed, check article1_update
// }
 //Puts the axe on the state where it gets destroyed, check article1_update
