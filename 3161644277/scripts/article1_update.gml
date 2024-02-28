vsp = vsp + 1;
state = 0;
if (hsp > 0){
    hsp = hsp - 1;
}
else if (hsp < 0){
    hsp = hsp + 1;
}

if (player_id.sculpture_hp < 40) {
    image_index = 3 - (player_id.sculpture_hp / 10);
}
with pHitBox {
    if (place_meeting(x, y, other.id) && self != other && player_id == other.player_id && !player_id.has_hit && !has_hit && 40 > player_id.sculpture_hp > 0
    && player_id.attack != AT_NSPECIAL
    && player_id.attack != AT_DSPECIAL && damage != 6){
        if (attack == AT_FSTRONG){
            other.hsp = 10 * player_id.spr_dir;
        }
        if (attack == AT_DSTRONG || attack == AT_NAIR){
            has_hit = true;
        }
        else {
            player_id.has_hit = true;
        }
        if (attack == AT_FSPECIAL || attack == AT_FTILT){
            other.hsp = 5 * player_id.spr_dir;
            player_id.hitpause = true;
            player_id.hitstop = 1;
        }
        player_id.sculpture_hp = player_id.sculpture_hp - damage;
        sound_play(asset_get("sfx_kragg_rock_shatter"));
        spawn_hit_fx(x, y, 193);
        sound_play(sound_effect);
    }
}

if (player_id.sculpture_hp == 40 || player_id.sculpture_hp ==  50){
    image_index = anim;
    anim = anim + 0.25;
    if (anim > 4.5){
        anim = 3;
    }
}

if (player_id.sculpture_hp < 1) {
    sound_play(asset_get("mfx_star"));
    image_index = 3;
    player_id.sculpture_hp = 40;
}
with pHitBox {
    if (other.player_id.sculpture_hp == 40 && place_meeting(x, y, other.id) && self != other && player_id == other.player_id && !player_id.has_hit && player_id.attack != AT_DSPECIAL && damage != 6) {
        state_timer = 0;
        state = 1;
        other.player_id.sculpture_hp = 45;
        sound_play(asset_get("sfx_kragg_rock_shatter"));
        spawn_hit_fx(x, y, 193);
        sound_play(sound_effect);
        sound_play(sound_get("sculpture"));
        if (attack == AT_FSPECIAL || attack == AT_FTILT){
            player_id.has_hit = true;
            player_id.hitpause = true;
            player_id.hitstop = 1;
        }
        if (attack == AT_DATTACK || attack == AT_FAIR || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_FTILT){
            other.player_id.article_speed = 9;
        }
        if (attack == AT_FSTRONG || attack == AT_FSPECIAL){
            other.player_id.article_speed = 12;
        }
        if (attack == AT_NAIR || attack == AT_DAIR || attack == AT_UAIR || attack == AT_BAIR || attack == AT_UTILT || attack == AT_DTILT || attack == AT_JAB || attack == AT_USPECIAL ){
            other.player_id.article_speed = 6;
        }
    }
}
if (player_id.sculpture_hp == 45){
    spr_dir = player_id.spr_dir;
    player_id.sculpture_hp = 50;
}
if (player_id.sculpture_hp == 50){
    state_timer++;
    hsp = spr_dir * player_id.article_speed;
    if (place_meeting( x+10 * spr_dir, y, asset_get("par_block"))) {
        spr_dir = spr_dir * -1;
    }
    if (!instance_exists(hbox)){
        hbox = create_hitbox(AT_NSPECIAL, 1, x+20*spr_dir, y+20);
    }
    else {
        hbox.x = x+20*spr_dir
        hbox.y = y+20
    }
    if (state_timer > 99){
        player_id.article_exises = 0;
        sound_stop(sound_get("sculpture"));
        sound_play(asset_get("sfx_kragg_rock_shatter"));
        spawn_hit_fx(x, y, 155);
        instance_destroy();
        exit;
    }
}
if (y > room_height + 100){
    player_id.article_exises = 0;
    sound_stop(sound_get("sculpture"));
    sound_play(asset_get("sfx_kragg_rock_shatter"));
    spawn_hit_fx(x, y, 155);
    instance_destroy();
    exit;
}
print_debug(player_id.article_speed)
