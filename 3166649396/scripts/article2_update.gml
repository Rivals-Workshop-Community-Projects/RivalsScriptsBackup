//article2_update
timer++
die_timer++

var spd = abs(point_distance(0, 0, hsp, vsp))
if spd > 2 {
    vfx_alpha = 0.2*(spd - 2)
    image_angle += 2*abs(point_distance(0, 0, hsp, vsp))
    if image_angle > 180 image_angle -= 360
} else {
    vfx_alpha = 0
    image_angle = lerp(image_angle, 15*dcos(timer*3), 0.05)
}

if hitbox_active && !launch && spd < 3 {
    with pHitBox if ("owner" in self) && owner == other.id {
        destroyed = true
    }
    hitbox_active = false
} else if !hitbox_active && spd >= 10 {
    var hbox = create_hitbox(AT_DSPECIAL, 2, x, y)
        hbox.owner = id
    
    hitbox_active = true
}

if player_id.state_attacking && player_id.attack == AT_DSPECIAL_2 && player_id.window <= 3 {
    die_timer = 0
    var dir = point_direction(x, y, player_id.x, player_id.y - 40)
    abs_spd = clamp(abs_spd + 0.6, 0, 12)
    
    hsp = abs_spd*dcos(dir)
    vsp = -abs_spd*dsin(dir)
    
    if point_distance(x, y, player_id.x, player_id.y - 40) <= 10 {
        switch_stance = true
    }
    
} else {
    abs_spd = 0
    hsp *= 0.92
    vsp *= 0.92
}

if switch_stance {
    player_id.dspec_stance = !player_id.dspec_stance
    if player_id.attack == AT_DSPECIAL_2 player_id.attack = AT_DSPECIAL
    player_id.switched_stances = true
    player_id.scythe_get_flash = true
    player_id.scythe_get_timer = 20
    sound_play(asset_get("sfx_ell_utilt_hit"))
    instance_destroy();
    exit;
}

with pHitBox if player_id == other.player_id && attack == AT_DSPECIAL_2 && hbox_num == 1 {
    if place_meeting(x, y, other) {
        other.launch = true

        if player_id.up_down && !player_id.down_down {
        	other.launch_angle = 30
        } else if player_id.down_down && !player_id.up_down {
        	other.launch_angle = -30
        } else {
            other.launch_angle = 0
        }
    }
}

if launch {
    
    launch_timer++
    if launch_timer == 1 {
        spr_dir = player_id.spr_dir
        die_timer = 0
        sound_play(sound_get("ScytheHeadBounce"))
        sound_play(sound_get("ScytheAttackHit"))
    }
    vsp = -12*dsin(launch_angle)
    hsp = 12*spr_dir*dcos(launch_angle)
    if launch_timer >= 12 {
        launch = false
        launch_timer = 0
    }
}
if position_meeting(x, y + 30*sign(vsp), asset_get("par_block")) {
    vsp *= -1
}
if position_meeting(x + 30*sign(hsp), y, asset_get("par_block")) {
    hsp *= -1
    spr_dir *= -1
}
/*
if die_timer >= 120 {
    spawn_hit_fx(x, y, HFX_ORI_BLUE_SMALL)
    instance_destroy()
    exit;
}
*/