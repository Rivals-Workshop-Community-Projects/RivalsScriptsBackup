//state
//0 thing
//1 slide

vsp = vsp + 1;
state = 0;

if (player_id.sculpture_hp < 40) {
    image_index = 3 - (player_id.sculpture_hp / 10);
}

with pHitBox {
    if (place_meeting(x, y, other.id) && self != other && player_id == other.player_id && !has_hit && 40 > player_id.sculpture_hp > 0){
        has_hit = true;
        player_id.sculpture_hp = player_id.sculpture_hp - damage;
        sound_play(asset_get("sfx_kragg_rock_shatter"));
        spawn_hit_fx(x, y, 193);
        sound_play(sound_effect);
    }
}

if (player_id.sculpture_hp < 1) {
    spr_dir = player_id.spr_dir
    image_index = 3;
    state = 1;
    state_timer = 0;
    player_id.sculpture_hp = 40;
    hbox = create_hitbox(AT_NSPECIAL, 1, x+20*spr_dir, y+20);
    sound_play(sound_get("sculpture"));
}
if (player_id.sculpture_hp == 40) {
    hsp = spr_dir * 10;
    if (place_meeting( x+10 * spr_dir, y, asset_get("par_block"))) {
        spr_dir = spr_dir * -1;
    }
    if (instance_exists(hbox)){
       hbox.x = x+20*spr_dir
       hbox.y = y+20
    }
    else if (state_timer > 99){
        sound_stop(sound_get("sculpture"));
        sound_play(asset_get("sfx_kragg_rock_shatter"));
        spawn_hit_fx(x, y, 155);
        instance_destroy();
        exit;
    }
}

if (y > room_height + 100) {
    instance_destroy();
    sound_stop(sound_get("sculpture"));
    sound_play(asset_get("sfx_kragg_rock_shatter"));
}

print_debug(bro_owns_article);
state_timer++;