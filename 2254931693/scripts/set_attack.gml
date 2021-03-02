//set_attack
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jump"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("fspecialupward"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("fspecialupward_hurt"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -12);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("bonby_fspecialhit"));
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 1);



set_attack_value(AT_EXTRA_3, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("jump"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9999999);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_EXTRA_3, 1);


set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 9999999);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -0);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 9999);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 9999);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 999);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 99999);






//USPECIAL frog damage rune
if(has_rune("B")){
    set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
}

//DSTRONG burn rune
if(has_rune("E")){
    set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 1);
}

user_event(13);

//haha funny USTRONG
if(has_rune("M")){
    set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("funnyustrong"));
    set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("funnyustrong_hurt"));
    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 45);
    set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 95);
    set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
    set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -92);
    set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 45);
    set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 205);
}

//fast FSPECIAL rune
if(has_rune("H")){
    set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 6);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
}



//FINAL SMASH




