switch (state){

    //force roll for same sprite
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_TECH_BACKWARD:
    case PS_TECH_FORWARD:
    sprite_index = sprite_get("roll");
    
    break;

    //temporary hurtboxes
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:

    if (attack == AT_DSPECIAL)
    hurtboxID.sprite_index = hurtbox_spr;


    if (attack == AT_FSPECIAL){
        if (window == 2){
        sprite_index = asset_get("empty_sprite");
        image_index = 4;
        draw_indicator = false;
        }
    }

    break;

    
    
}

if (rewind_travel_time != 0)
{
    sprite_index = asset_get("empty_sprite");
    draw_indicator = false;
}

if (instance_exists(rewind_clone) && rewind_clone.cur_spr == 11){
    rewind_clone.cur_spr = sprite_get("jump");
}

if (rewind_defensive_cd > 0){
    rewind_defensive_cd--;
    parry_cooldown = 1;
    has_airdodge = false;
}

//cooldowns sounds



if (move_cooldown[AT_NSPECIAL] > 0)
    ball_ready = false;

if (!ball_ready && move_cooldown[AT_NSPECIAL] == 0){
    sound_play(sound_get("ball_ready"));
ball_ready = true;
}

if (move_cooldown[AT_DSPECIAL] > 0)
    rewind_ready = false;

if (!rewind_ready && move_cooldown[AT_DSPECIAL] == 0){
    sound_play(sound_get("rewind_ready"));
rewind_ready = true;
}