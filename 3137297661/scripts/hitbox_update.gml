//hitbox_update

//handle ball projectile
if(attack == AT_NSPECIAL && sprite_index == player_id.ball_spr){
    //ball hits ground
    if(!free){
        destroyed = true;
        gas = instance_create(x, y, "obj_article1");
        gas.spr_dir = spr_dir;
        gas.spr = sprite_get("gas_ground");
        gas.sprite_index = sprite_get("gas_ground_hitbox");
        sound_play(sound_get("gasglass"));
    }
    //check for collision with fspecial, destroy ball and create fspecial gas if so
    with(pHitBox){
        if(orig_player == other.player){
            if( attack == AT_FSPECIAL && hbox_num == 2){
                if(place_meeting(x, y, other)){
                    other.destroyed = true;
                    gas = instance_create(other.x, other.y, "obj_article1");
                    set_article(gas, "fspec", sprite_get("fspecialgas"), sprite_get("fspecialgas_hitbox"), [2, 31, 18, 54], 15, 4.1, 1);
                    sound_play(sound_get("gasglass"));
                    player_id.hsp*=player_id.fspec_boost_mult;
                }
            }
            else if(attack == AT_USPECIAL && hbox_group == 2){
                if(place_meeting(x, y, other)){
                    other.destroyed = true;
                    gas = instance_create(x, y, "obj_article1");
                    set_article(gas, "uspec", sprite_get("uspecialgas"), sprite_get("uspecialgas_hitbox"), [1, 37, 21, 53], 19, 4.1, 1);
                    sound_play(sound_get("gasglass"));
                    player_id.hsp*=player_id.uspec_boost_mult;
                    player_id.vsp*=player_id.uspec_boost_mult;
                }
            }
            else if(attack == AT_DAIR && hbox_num == 1){
                if(place_meeting(x, y, other)){
                    other.destroyed = true;
                    instance_create(other.x, other.y, "obj_article1");
                    player_id.vsp = 1;
                    player_id.glassbounce = true;
                    sound_play(sound_get("gasglass"));
                }
            }
        }
    }
    if ((x>room_width + 50 || x<-50 || y>room_height + 200 || y < -200) && hitbox_timer > 5) {
        destroyed = true;
    }
}

#define set_article(gas, type, img_spr, hit_spr, a_windows, endf, a_speed, tier){
    gas.spr_dir = spr_dir;
    gas.gas_type = type;
    gas.spr = img_spr;
    gas.sprite_index = hit_spr;
    gas.anim_windows = a_windows;
    gas.endframe = endf;
    gas.anim_speed = a_speed;
    gas.tier = tier;
}