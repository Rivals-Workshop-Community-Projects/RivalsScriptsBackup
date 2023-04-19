//ass
if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR){
    //dot_img = 0;
}
if (!instance_exists(pellet)){
    pellet_id = noone;
}
if (state == PS_WAVELAND){
	sound_stop(jump_sound);
}
if (instance_exists(hydrant)){
    if (hydrant.state == 0 && hydrant.idle_time == 59 && hydrant.sprays == 2){
        spawn_hit_fx(hydrant.x, hydrant.y - 8, 144);
    }
}

if (instance_exists(hydrant_hit)){
    if (hydrant_hit.y > room_height + 100){
    	hydrant_cooldown = 0;
    }
    if (hydrant_hit.free == false){
    	hydrant_cooldown = 0;
        if (!instance_exists(hydrant)){
    	hydrant = instance_create(hydrant_hit.x, hydrant_hit.y - 2, "obj_article_solid");
        }
        hydrant_hit.hitbox_timer = 9999;
    }
}

if (!instance_exists(hydrant_hit)){
    if (hydrant_cooldown > 80){
        hydrant_cooldown = 80;
    }
}

if (hydrant_cooldown > 0){
    hydrant_cooldown --;
}

if (instance_exists(fruit)){
    move_cooldown[AT_NSPECIAL] = 2;
}

if (!free && move_cooldown[AT_FSPECIAL] > 30){
    move_cooldown[AT_FSPECIAL] = 30;
}

fruit_sound_num = fruit_num - 1;


if (state == PS_JUMPSQUAT && !free && prev_state == PS_ATTACK_GROUND && attack == AT_DATTACK){
	//move_cooldown[AT_USTRONG] = 2;
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_FSPECIAL_2 && instance_exists(pellet)){
        can_tramp = false;
    }
} else can_tramp = true;