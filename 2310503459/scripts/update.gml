if (state == PS_DOUBLE_JUMP){
    if (state_timer = 1 && ammo > 0){
        vsp = -7;
        can_attack = false;
        can_special = false;
    }
    if (state_timer > 6 && jump_down && ammo > 0){
                iasa_script();
                set_state(free?PS_DOUBLE_JUMP:PS_IDLE);
                can_attack = false;
                can_special = false;
        }
    }
else
{
    if (jump_down && state = PS_IDLE_AIR && !hitpause){
        if (ammo > 0){
                iasa_script();
                set_state(free?PS_DOUBLE_JUMP:PS_IDLE);
                sound_play(asset_get("sfx_flareo_rod"));
                can_attack = false;
                can_special = false;
        }
    else
    {
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
        }
    }
}

if (state == PS_DOUBLE_JUMP){
    if (state_timer = 1){
        if (ammo >= 1){
            ammo--;
            sound_play(asset_get("sfx_flareo_rod"));
            create_hitbox(AT_BULLETJUMP, 1, x, y - 4);
    }
    else
    {
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
        spawn_hit_fx(x, y-60, empty);
        sound_play(asset_get("sfx_blow_weak1"));
        }
    }
}

if (jump_down && ammo = 0 && state = PS_IDLE_AIR){
    iasa_script();
    set_state(free?PS_IDLE_AIR:PS_IDLE);
}

if (shield_down && ammo = 0 && state = PS_IDLE_AIR){
    iasa_script();
    set_state(free?PS_IDLE_AIR:PS_IDLE);
}

if (state == PS_DOUBLE_JUMP){
    if (state_timer < 4){
        can_attack = false;
        can_special = false;
    }
    else{
        can_attack = true;
        can_special = true;
    }
}

if (ammo = 0){
djumps = 1;
has_airdodge = false;
}
else{
djumps = 0;
emptytimer = 0;
}

if (state_cat = SC_GROUND_NEUTRAL || state_cat = SC_GROUND_COMMITTED || state = PS_WALL_JUMP || state = PS_WALL_TECH){
ammo = ammomax;
has_airdodge = true;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_DSPECIALAIR] = 0;
emptytimer = 0;
}

if (ammo > ammomax) ammo = ammomax;
if (ammo < 0) ammo = 0;

if (state == PS_AIR_DODGE){
    if (state_timer = 3 || state_timer = 9 || state_timer = 15){
            sound_play(asset_get("sfx_flareo_rod"));
            create_hitbox(AT_BULLETJUMP, 1, x, y - 4);
        }
}

if (state == PS_AIR_DODGE){
    if (state_timer = 1){
        if (ammo >= 1){
            ammo = ammo - 3;
    }
    else
    {
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
        spawn_hit_fx(x, y-60, empty);
        sound_play(asset_get("sfx_blow_weak1"));
        }
    }
}

if (!free){ 
ammo = ammomax;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_DSPECIALAIR] = 0;
emptytimer = 0;
}

if (state = PS_HITSTUN){
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_DSPECIALAIR] = 0;
}

if (balloonout = true){
    gravity_speed = .35;
    knockback_adj = 1.2;
    if(vsp > 8) vsp = 8;
}
    else{
    gravity_speed = .6;
    knockback_adj = 1.1;
}

if (ammo = 0 && emptytimer = 0){
    if (spr_dir = 1) spawn_hit_fx(x, y-60, empty);
    if (spr_dir = -1) spawn_hit_fx(x, y-60, empty_backwards);
    sound_play(asset_get("sfx_blow_weak1"));
    emptytimer++;
}

with(asset_get("obj_article1")){
    if (player_id == other.id){
        string_x = x;
        string_y = y;
    } 
}
