//die if not current meteor
if (self != player_id.meteor_id) or (should_die) {
    switch(rock_type) {
        case("rock"):spawn_hit_fx(x,y,player_id.hfx_rock_small);sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,0.5,1.15); break;
        case("sand"):spawn_hit_fx(x,y,player_id.hfx_sand_big) break;
    }
    sound_play(asset_get("sfx_bird_sidespecial"),false,noone,0.35,1.45);
    sound_play(asset_get("sfx_ghost_glove"),false,noone,0.15,1.15);
    instance_destroy()
    exit;
}
/*
if rock_type == "sand" { //sandstorm damage, might remove
    with(oPlayer) {
        if place_meeting(x,y,other) {
            if other.player != player && get_player_team(other.player) != get_player_team(player) {
                if get_gameplay_time() mod 45 == 0 {
                    take_damage(player,-1,1);
                }
            }
        }
    }
}*/
if rock_type == "rock" {
    with(pHitBox) {
        if place_meeting(x,y,other) {
            if player != other.player {
                other.should_die = true
            }
        }
    }
    if !instance_exists(rock_hitbox) && rock_timer >= 45{
        rock_hitbox = create_hitbox(AT_FSPECIAL_2,2,x,y);
        rock_hitbox.rock_owner = self;
    }
}

//reduce speed if moving
hsp = lerp(hsp,0,air_friction);
vsp = lerp(vsp,0,air_friction);
rock_timer += 1; //rock timer 
//animation/sprite
switch(rock_type) {
    case("rock"):
        sprite_index = sprite_get("proj_fspecial_armor");
        mask_index = sprite_get("proj_fspecial_armor");
        break;
    case("sand"):
        sprite_index = sprite_get("art_sandcloud");
        mask_index = sprite_get("art_sandcloud");
        image_index += 0.15
        break;
}