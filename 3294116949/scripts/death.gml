// called when the character gets KO'd


if (instance_exists(axe)){
    with(axe){
        was_hit = true;
        // print("not hit by EL FENNEK");
        if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
        state_timer=0;
        state = 3;
    	is_hittable = false;
    	ignores_walls = true;
    	sprite_index = sprite_get("spinning_axe2");
    	return_magnintude = 0;
    	return_dir = point_direction(x, y, player_id.x, player_id.y);
    }
    if(instance_exists(axe.axe_hitbox)) axe.axe_hitbox.destroyed = true;
}
if instance_exists(lamp){
    spawn_hit_fx(lamp.x, lamp.y, HFX_SHO_FLAME_SMALL);
    instance_destroy(lamp)
}