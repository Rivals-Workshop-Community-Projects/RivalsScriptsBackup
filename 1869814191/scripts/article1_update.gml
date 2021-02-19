//article1_update

if (init == 0) {
    init = 1;
}

if (state >= 8) {
    with(pHitBox){
        if (place_meeting(x,y,other) && player_id != other.player_id){
            spawn_hit_fx(x, y, 301);
            instance_destroy(other);
        }
        if (was_parried) {
            spawn_hit_fx(x, y, 301);
            instance_destroy(other);
        }
    }
}

with (asset_get("plasma_field_obj")){ //bones are destroyed in clairen's plasma field
    with (other.id){
        if (get_player_team(get_instance_player(other)) != get_player_team(player)){
            if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                state = 7;
                state_timer = 0;
            }
        }
    }
}

if (player_id.hard_mode) {
    bone_hit = 0;
}

if (state == 0) {
    state_timer++;
    free = true;
    if (state_timer >= bone_spawn) {
        state = 1;
        state_timer = 0;
    }
}

if (state == 1) { //used for horizontal bone creation
    state_timer++;
    bone_hit_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    if (bone_hit_timer > bone_hit) {
        create_hitbox(AT_EXTRA_1, 4, x+4*dir, y-24);
        bone_hit_timer = 0;
    }
    if (state_timer >= bone_spawn) {
        state = 2;
        state_timer = 0;
    }
}

if (state == 2) {
    state_timer++;
    bone_hit_timer++;
    free = true;
    
    if (hsp >= 3) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (hsp <= -3) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    if (bone_hit_timer > bone_hit) {
        create_hitbox(AT_EXTRA_1, 4, x+4*dir, y-24);
        bone_hit_timer = 0;
    }
    
    if (state_timer >= white_bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 8) { //used for horizontal blue bone creation
    state_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -8*dir;
    }
    create_hitbox(AT_EXTRA_1, 8, x+4*dir, y-24);
    if (state_timer >= bone_spawn) {
        state = 9;
        state_timer = 0;
    }
}

if (state == 9) {
    state_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -8*dir;
    }
    
    hsp = hsp*25/24;
    vsp = vsp*25/24;
    
    create_hitbox(AT_EXTRA_1, 8, x+4*dir, y-24);
    
    if (state_timer >= bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 16) { //used for horizontal blue bone creation (left)
    state_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    create_hitbox(AT_EXTRA_1, 7, x+4*dir, y-24);
    if (state_timer >= bone_spawn) {
        state = 17;
        state_timer = 0;
    }
}

if (state == 17) {
    state_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    hsp = hsp*9/10;
    vsp = vsp*9/10;
    
    create_hitbox(AT_EXTRA_1, 7, x+4*dir, y-24);
    
    if (state_timer >= bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 10) { //used for vertical blue bone creation (going up)
    state_timer++;
    free = true;
    create_hitbox(AT_EXTRA_1, 10, x, y-24);
    if (state_timer >= bone_spawn) {
        state = 11;
        state_timer = 0;
    }
}

if (state == 11) {
    state_timer++;
    free = true;
    
    hsp = hsp*5/6;
    vsp = vsp*5/6;
    
    create_hitbox(AT_EXTRA_1, 10, x, y-24);
    
    if (state_timer >= bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 12) { //used for vertical blue bone creation (going down)
    state_timer++;
    free = true;
    
    if (state_timer < 2) {
        vsp = 8;
    }
    if (abs(vsp) <= .01 && state_timer > 2) {
        vsp = -7;
    }

    create_hitbox(AT_EXTRA_1, 12, x, y-24);
    if (state_timer >= bone_spawn) {
        state = 13;
        state_timer = 0;
    }
}

if (state == 13) {
    state_timer++;
    free = true;
    
    if (abs(vsp) <= .01 && hit_wall == false) {
        vsp = -7;
    }
    
    hsp = hsp*11/12;
    vsp = vsp*11/12;
    
    create_hitbox(AT_EXTRA_1, 12, x, y-24);
    
    if (state_timer >= bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 14) { //used for mini blue bone creation
    state_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    create_hitbox(AT_EXTRA_1, 14, x+4*dir, y-14);
    if (state_timer >= bone_spawn) {
        state = 15;
        state_timer = 0;
    }
}

if (state == 15) {
    state_timer++;
    free = true;
    
    if (hsp >= 4) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (hsp <= -4) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    create_hitbox(AT_EXTRA_1, 14, x+4*dir, y-14);
    
    if (state_timer >= small_blue_destroy) {
        instance_destroy();
        exit;
    }
}
    
if (state == 3) { //used for vertical bone creation
    state_timer++;
    bone_hit_timer++;
    free = true;
    
    if (state_timer < 2) {
        if (vert_dir == 1) {
            vsp = 8;
        }
        if (vert_dir == 0) {
            vsp = -8;
        }
    }
    if (abs(vsp) <= .01 && state_timer > 2) {
        if (vert_dir == 1) {
            vsp = -10;
        }
        if (vert_dir == 0) {
            vsp = 10;
        }
    }
    
    if (bone_hit_timer > bone_hit) {
        create_hitbox(AT_EXTRA_1, 5, x, y-28);
        bone_hit_timer = 0;
    }
    if (state_timer >= bone_spawn) {
        state = 4;
        state_timer = 0;
    }
}

if (state == 4) {
    state_timer++;
    bone_hit_timer++;
    free = true;
    
    if (abs(vsp) <= .01) {
        if (vert_dir == 1) {
            vsp = -10;
        }
        if (vert_dir == 0) {
            vsp = 10;
        }
    }
    
    if (vsp >= 3) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    if (vsp <= -3) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (bone_hit_timer > bone_hit) {
        create_hitbox(AT_EXTRA_1, 5, x, y-28);
        bone_hit_timer = 0;
    }
    
    if (state_timer >= white_bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 5) { //used for mini bone creation
    state_timer++;
    bone_hit_timer++;
    free = true;
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    if (bone_hit_timer > bone_hit) {
        create_hitbox(AT_EXTRA_1, 6, x+4*dir, y-14);
        bone_hit_timer = 0;
    }
    if (state_timer >= bone_spawn) {
        state = 6;
        state_timer = 0;
    }
}

if (state == 6) {
    state_timer++;
    bone_hit_timer++;
    free = true;
    
    if (hsp >= 4) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (hsp <= -4) {
        hsp = hsp*5/6;
        vsp = vsp*5/6;
    }
    
    if (hit_wall == true) {
        hsp = -7*dir;
    }
    
    if (bone_hit_timer > bone_hit) {
        create_hitbox(AT_EXTRA_1, 6, x+4*dir, y-14);
        bone_hit_timer = 0;
    }
    
    if (state_timer >= small_bone_destroy) {
        instance_destroy();
        exit;
    }
}

if (state == 7) {
    spawn_hit_fx(x, y, 301);
    instance_destroy();
    exit;
}

if (player_id.was_parried) {
    spawn_hit_fx(x, y, 301);
    instance_destroy();
}