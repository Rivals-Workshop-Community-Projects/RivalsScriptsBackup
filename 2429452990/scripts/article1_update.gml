//article1_update


if (y > room_height + 100){
    with (oPlayer){
    if (player = other.player){
      self.mine_exists = 0;
    }
}
instance_destroy();
}

image_index += 0.15;

vsp = vsp + 0.35

if (free = 0){
    hsp = 0;
}

if (free = 0 && landed = 0){
    sound_play(sound_get("duck_mineland"));
    landed = 1;
}


if (arm_time < 30 && landed = 1){
    arm_time = arm_time + 1;
}

if (arm_time = 29){
    sound_play(sound_get("duck_spawn"));
    sprite_index = sprite_get("duckmine");
}

var minenearest;
minenearest = instance_nearest(x,y,asset_get("oPlayer"));

if (instance_exists(minenearest) and point_distance( x, y, minenearest.x, minenearest.y ) < 65 && arm_time = 30){
    detstart = 1;
    }
    

if (detstart = 1){
    dettime = dettime + 1;
}

if (dettime = 1){
    sound_play(sound_get("duck_minebeeping"));
}

if (dettime = 6){
        with (oPlayer){
    if (player = other.player){
      self.mine_exists = 0;
    }
}
sound_play(sound_get("duck_explode"));
create_hitbox(AT_NSPECIAL, 1, x, y - 30)
    shake_camera(5, 10);
    spawn_hit_fx( x, y - 30, player_id.mineexplosionfx );
    instance_destroy();
}