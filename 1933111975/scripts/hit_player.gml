//hit_player - called when one of your hitboxes hits a player



target = noone;

if !hit_player_obj.clone{
    target = hit_player_obj;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && !target.clone){
    nspectarget = target;
    with (asset_get("obj_article1")){
        if (player_id == other.id){
            bufferedstate = 8;
        }
    }
}else{
    nspectarget = noone;
}



//Hitbox destroy handling, pt1

my_hitboxID.shoulddie = false;



if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2){
    sound_play(asset_get("mfx_ring_bell"));
}



//Molotov hits --> spawn article

my_hitboxID.shouldspawnmolotov = true;
molotovhit = true;
my_hitboxID.target = target;



//Molotov drags people

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num < 3 && my_hitboxID.battime < 1){
    target.molotovhsp = my_hitboxID.hsp * 0.75;
    target.molotovspeed = true;
    if (article != noone){
        article.target = target;
        article = noone;
    }
}



//Bullet VFX / spawn hitbox 2 if soaked

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    if (my_hitboxID.player == my_hitboxID.orig_player){
        my_hitboxID.hitplayer = true;
        my_hitboxID.hitplayertimer = 0;
        my_hitboxID.hitbox_timer = 0;
        if hit_player_obj.soaked{
            if !godmode{
                if !runeJ{
                    hit_player_obj.soaked = false;
                    spawn_hit_fx(hit_player_obj.x, floor(hit_player_obj.y - hit_player_obj.char_height / 2), unsoak_fx);
                }
                else{
                    if hit_player_obj.halfunsoaked{
                        target.soaked = false;
                        spawn_hit_fx(hit_player_obj.x, floor(hit_player_obj.y - hit_player_obj.char_height / 2), unsoak_fx);
                    }
                    else{
                        hit_player_obj.halfunsoaked = true;
                    }
                }
            }
            my_hitboxID.hitbox = 3;
            my_hitboxID.sprite_index = spr_bullet3;
            my_hitboxID.image_index = 0;
        }
        else if runeL{
            my_hitboxID.hitbox = 3;
            my_hitboxID.sprite_index = spr_bullet3;
            my_hitboxID.image_index = 0;
        }
        else{
            my_hitboxID.hitbox = 2;
            my_hitboxID.sprite_index = spr_bullet2;
            my_hitboxID.image_index = 0;
        }
    }else{
        hitbox_timer = 999;
    }
}



//Soak people

dont_reset_cooldown = true;

if (my_hitboxID.type == 1 && my_hitboxID.attack != AT_NSPECIAL){
    dont_reset_cooldown = false;
}

if (my_hitboxID.attack == AT_DSPECIAL){
    if (!target.soaked && my_hitboxID.hbox_num == 3){
        target.soaked_id = id;
        target.hitstop += 10;
        sound_play(asset_get("sfx_waterhit_heavy"))
        rain_cooldown = cooldown_min;
        dont_cooldown = true;
        target.soaked = true;
        sound_play(sound_get("soaked1"));
        sound_play(sound_get("soaked2"));
        target.shoulddrawsoak1 = false;
        target.shoulddrawsoak2 = false;
        target.shoulddrawsoak3 = false;
        spawn_hit_fx(target.x, floor(target.y - target.char_height / 2), soak_fx);
    }
    if (!my_hitboxID.fromcloud && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && target.state_cat == SC_HITSTUN){
        target.x = lerp(target.x, x, 0.5);
    }
    target.halfunsoaked = false;
}



//Skip cooldown

if (!dont_reset_cooldown && target.soaked && target.soaked_id == id && rain_cooldown < cooldown_max && rain_cooldown > cooldown_min){
    rain_cooldown = cooldown_min;
}



//Up Tilt jump cancel on hit

if ((my_hitboxID.attack == AT_UTILT && window == 3) || (my_hitboxID.attack == AT_DAIR && window == 5) || (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)) {
    utilt_jump = true;
}



//Dash Attack cancel on hit

if (my_hitboxID.attack == AT_DATTACK) {
    set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 1);
    set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 1);
}



//Hitbox destroy handling, pt2

if (my_hitboxID.shoulddie){
    instance_destroy(my_hitboxID);
}



if (my_hitboxID.type == 1){
    meleetarget = target;
}