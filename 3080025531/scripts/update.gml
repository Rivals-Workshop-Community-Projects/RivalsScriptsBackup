
if (!instance_exists(oTestPlayer) && !instance_exists(fidget)) {
    fidget = instance_create(x, y, "obj_article1");
}

if(get_gameplay_time() <= 120){
	if(taunt_pressed && !bigiron){
		bigiron = true;
		sound_play(sfx_alleyoop);
	}
}

if (voiced) {
    if (state == PS_JUMPSQUAT && state_timer == 1) {
        if (!dust_mode) sound_play(vc_dust_jump);
        else sound_play(vc_dust_dust);
    }
    if (state == PS_WALL_JUMP && state_timer == 2) {
        if (!dust_mode) sound_play(vc_dust_wjump);
        else sound_play(vc_dust_dust);
    }
}

if (grabbed_id != noone) {
    grabbed_id.ungrab++;
    if (grabbed_id.ungrab == ungrab_timer) {
        grabbed_id.state = PS_TUMBLE;
        grabbed_id.ungrab = 0;
        grabbed_id = noone;
    }
    else {
        grabbed_id.hitstop = 2;
        grabbed_id.hitpause = true;
        grabbed_id.state = PS_HITSTUN;
        grabbed_id.hsp = 0;
        grabbed_id.vsp = 0;
    }
}

// Ezpz stamina stuff
if (exhausted) {
    move_cooldown[AT_FSPECIAL] = 2;
    move_cooldown[AT_FSPECIAL_AIR] = 2;
    if (get_gameplay_time() % 4 == 0) {
        exhausted_index++;
    }
    if (exhausted_time > 0) {
        exhausted_time -= 1;
    }
    else {
        sound_play(asset_get("mfx_coin"));
        outline_color = [0, 0, 0];
        init_shader();
        exhausted = false;
        exhausted_time = 0;
    }
}
else {
    if (stamina < 0) {
        //sound_play(asset_get("sfx_boss_fireball"));
        //sound_play(asset_get("mfx_timertick_holy"))
        sound_play(sfx_exhaust);
        outline_color = [120, 0, 0];
        init_shader();
        exhausted = true;
        exhausted_time = max_exhausted_time;
        stamina = 0;
    }
    if (stamina < max_stamina && get_gameplay_time() % 4 == 0) stamina++;
    if (stamina > max_stamina) stamina = max_stamina;
}

// Delayed Pillar Spawn
if (pillar_create == true) {
    if (pillar_create_time != 0) {
        pillar_create_time -= 1;
    }
    else {
        var pillar = create_hitbox(AT_NSPECIAL, 6, pillar_create_x, pillar_create_y);
        sound_play(sfx_pillar)
        pillar_create = false;
    }
}


//Reset Move Cooldown on Uspecial on grounded or wall jump
if (!free || state == PS_WALL_JUMP) {
    move_cooldown[AT_USPECIAL] = 0;
}

if (string_lower(get_player_name(player)) == "tom" || string_lower(get_player_name(player)) == "toma") {
    if (dust_mode_ready == false) dust_mode_ready = true;
}

move_cooldown[AT_DSPECIAL] = 2;
move_cooldown[AT_NSPECIAL] = 2;