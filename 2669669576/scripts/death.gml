nspecial_cur_window = 0;
nspecial_cur_frame = 0;
nspecial_cur_size = 1;
if(instance_exists(fspecial_wall)){
    fspecial_wall.state = 4;
    fspecial_wall.life = 0;
    fspecial_wall.sprite_index = sprite_get("wall_despawn");
}
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_FSPECIAL_AIR] = 0;