lifetime++;
vsp += 1 - 0.6*free;

if (free){
    hsp = 3 * spr_dir
}
else {
    hsp = 0;
}

if (lifetime >= 240) {
    if ((((lifetime-240) % 10) / 5) == 0){
        sprite_index = sprite_get("nothing");
    }
    else {
        sprite_index = sprite_get("heart");
    }
}
if (lifetime >= 300) {
    player_id.kk_heart = noone;
    instance_destroy();
}