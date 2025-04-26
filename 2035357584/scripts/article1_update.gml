//article1_update
if(aerial){
    image_index = state_timer/8
}

if(wire == noone && !breakdown){
    if(aerial){
        wire = create_hitbox(AT_DSPECIAL, 2, x + 5 * spr_dir, y - 77);
    }
    else{
        wire = create_hitbox(AT_DSPECIAL, 1, x - 18 * spr_dir, y - 8);
    }
}

//check for contact with other players and keep updating hitbox position
if(wire != noone && instance_exists(wire)){
    if (!wire.destroyed) {
        if(aerial){
            wire.x = x + 5 * spr_dir;
            wire.y = y - 77;
        }
        else{
            wire.x = x - 18 * spr_dir;
            wire.y = y - 8;
        }
    }
    with(oPlayer){
        if(other.player_id != id && place_meeting(x, y, other.wire) && !other.blown){
            other.should_explode = true;
        }
    }
}

//check for destruction of trap, if enabled
if (instance_exists(wire) && wire.destroyed == true && player_id.aerial_traps_destructible) {
    wire = noone;
    should_drop_grenade = false;
    breakdown = true;
}

//play breakdown animation
if(breakdown){
    if(wire != noone && instance_exists(wire)){
        instance_destroy(wire);
        wire = noone;
    }
    //aerial breakdown
    if(aerial){
        sprite_index = empty;
        
        p1_off += p1_vsp;
        p1_vsp += p1_ACC;
        p1_life++;
        
        p2_off += p2_vsp;
        p2_vsp += p2_ACC;

        if(p1_life > p1_LIFETIME && y - p2_off < 0){
            broken = true;
        }
    }
    else{
        sprite_index = breaking;
        image_index = anim_timer;
        anim_timer += 0.25;
    
        if(anim_timer >= 8){
            broken = true;
        }
    }
}

//begin breakdown after certain amount of time
if (state_timer > 664 && !runeB) {
    breakdown = true;
}

//short delay before explosion
if (should_explode) {
    explosion_timer++;
    if explosion_timer == 3 {
        visible = false;
        instance_destroy(wire);
        blown = true;
    }
}

//delete after breakdown is finished
if (broken) {
    instance_destroy();
    exit;
}

//blow trap if blown == true
if(blown){
    if (explosion_timer == 3) {
        with (player_id) {
            stop_parry = true;
            if(other.aerial){
                var expl = create_hitbox(AT_EXPLOSION, 1, other.x + 5 * spr_dir, other.y - 87);
                sound_play(sound_get("explosion1"))
                expl.player = player;
                expl.kb_angle = aerial_trap_angle;
                expl.kb_value = aerial_trap_knockback;
                expl.kb_scale = aerial_trap_scaling;
                expl.camera_shake = 0;
                spawn_hit_fx(other.x + 5 * spr_dir, other.y - 105, air_explosion);
            }
            else{
                var expl = create_hitbox(AT_EXPLOSION, 1, other.x - 5 * spr_dir, other.y - 10);
                sound_play(sound_get("explosion1"))
                expl.player = player;
                expl.kb_angle = trap_angle;
                expl.kb_value = trap_knockback;
                expl.kb_scale = trap_scaling;
                expl.camera_shake = 0;
                spawn_hit_fx(other.x - 5 * spr_dir, other.y - 28, ground_explosion);
            }
            if(runeN || has_rune("N")){
                spawn_cluster = true;
                spawnX = other.x
                spawnY = other.y
            }
            
            trap = noone;
        }
        instance_destroy();
        exit;
    }
}

state_timer++;