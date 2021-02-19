// switch (selected_spell){
//     case 5:
//         attack = AT_TORNADO;
//         vsp = -10;
//     break;
//     default:
//         // nothing
//         hsp = 8;
//     break;
// }

// hsp = -30;

// if (selected_spell == 5){
//     // attack = AT_TAUNT;
//     // set_attack(AT_JAB);
//     // vsp = -10;
// }

//is this still needed?? 
if (attack == AT_DSPECIAL_2){
    set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
    
    // doesn't get called... why???
    switch(selected_spell){
        case 5: // CRAB
            hsp = -10;
			set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, -20); //test
        break;
    }
}

if (attack == AT_NSPECIAL){
    
    if (time_until_magic > 0){
        set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("happy"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 19);
set_window_value(AT_NSPECIAL, 1, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);

    } else{
        set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_holy_tablet"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 290);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 10); //50
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
    }

    switch (selected_spell){
        case 5:
            // vsp = -5;
            // set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 1);
            // set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 20);
            break;
        case 6:
            // set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 180);
            // set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 20);
            break;
        case 7:

            break;
        default:
            // hsp = -10;
            break;
    }
}

/* old, remove if not used for a while
if (attack == AT_FSTRONG){
    // todo: make this rng happen beforehand so opponent can see and react to it
    var effect_selection = random_func(3, 4, 1);
    switch(effect_selection){
        // todo: just manually code the effects (by modifying hitstun, visual effect, sound, whatever, keep it simple)
        // NOTHING
        case 0: 
            random_effect = 11; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 15);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 115);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
        break;
        // BURN
        case 1: 
            random_effect = 1; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj_fire"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 148);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
        break;
        // POISON
        case 2: 
            random_effect = 10; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj_poison"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 5);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 120);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_frog_fstrong"));
        break; // effect 5 freeze crashes the game
        // ICE (custom)
        case 3: 
            random_effect = 8; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj_ice"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 45);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 158);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
        break;
        default: vsp = -5; break;
    }
    set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, random_effect);
}

if (attack == AT_USTRONG){
    // todo: make this rng happen beforehand so opponent can see and react to it
    var effect_selection = random_func(3, 4, 1);
    switch(effect_selection){
        // todo: just manually code the effects (by modifying hitstun, visual effect, sound, whatever, keep it simple)
        // NOTHING
        case 0: 
            random_effect = 11; 
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 15);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 115);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
        break;
        // BURN
        case 1: 
            random_effect = 1; 
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_fire"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 10);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 148);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
        break;
        // POISON
        case 2: 
            random_effect = 10; 
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_poison"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 5);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 120);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_frog_fstrong"));
        break; // effect 5 freeze crashes the game
        // ICE (custom)
        case 3: 
            random_effect = 8; 
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_ice"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 45);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 158);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
        break;
        default: vsp = -5; break;
    }
    set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, random_effect);
}

if (attack == AT_DSTRONG){
    // todo: make this rng happen beforehand so opponent can see and react to it
    var effect_selection = random_func(3, 4, 1);
    switch(effect_selection){
        // todo: just manually code the effects (by modifying hitstun, visual effect, sound, whatever, keep it simple)
        // NOTHING
        case 0: 
            random_effect = 11; 
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 15);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 115);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
        break;
        // BURN
        case 1: 
            random_effect = 1; 
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj_fire"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 148);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
        break;
        // POISON
        case 2: 
            random_effect = 10; 
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj_poison"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 5);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 120);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_frog_fstrong"));
        break; // effect 5 freeze crashes the game
        // ICE (custom)
        case 3: 
            random_effect = 8; 
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj_ice"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 45);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 158);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
        break;
        default: vsp = -5; break;
    }
    set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, random_effect);
}