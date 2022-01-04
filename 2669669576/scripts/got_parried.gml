nspecial_cur_window = 0;
nspecial_cur_frame = 0;
nspecial_cur_size = 1;

shadowball_hit = false;
shadowball_hit_timer = 0;

if(instance_exists(fspecial_wall)){
    fspecial_wall.state = 4;
    fspecial_wall.life = 0;
    fspecial_wall.sprite_index = sprite_get("wall_despawn");
}

if(my_hitboxID.type == 2){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp = my_hitboxID.hsp*3;
}
fspecial_hard_cd = true;
move_cooldown[AT_FSPECIAL] = 300;
move_cooldown[AT_FSPECIAL_AIR] = 300;

if(my_hitboxID.type != 2 and free){
    hsp = 0;
}