//runes
if(runeA){
    walk_speed = 4;
    walk_accel = 0.4;
    walk_turn_time = 5;
    initial_dash_time = 6;
    initial_dash_speed = 14;
	dash_speed = 10.8;
    dash_turn_time = 7;
    dash_turn_accel = 4;
    dash_stop_time = 3;
    ground_friction = .2;

}
if(runeB){
	max_djumps = 2;

}
if(runeC){
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);

    set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);

    set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
    set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
    set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 4);
    set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 10);

}
if(runeD){
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
    set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 16);
    set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 5);

    set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);

}
if(runeE){
    if (attack == AT_USPECIAL) {
        if (window == 2){
            if(!joy_pad_idle){
                teleport_sp = -52;
                vsp = (dsin(joy_dir)*teleport_sp);
                hsp = (dcos(joy_dir)*-teleport_sp);
            }
        }
    }
}
if(runeF){
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 28);
    set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 27);

}
if(runeG){
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);

}
if(runeH){
	set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 84);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 84);

    set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 84);
    set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 84);

    set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 92);
    set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 92);

}
if(runeI){
    move_cooldown[AT_FSPECIAL] = 60;
    
	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialproj"));
    set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialproj"));

    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 10);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

    set_num_hitboxes(AT_FSPECIAL, 1);

    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 30);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 10);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -48);
    set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 0);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 0);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 19);
    set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 108);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("beam1"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 33);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .5);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 1);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fstrong_proj"));

}
if(runeJ){
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);

}
if(runeK){
	knockback_adj = 1

}
if(runeL){
    set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 20);
    set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
    set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_AIR_FRICTION, 0);

}
if(runeM){
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);

}
if(runeN){
	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialwhy"));
    set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialwhy"));
    set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecialwhy_hurt"));

    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 410);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -56);
    set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 775);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 703);

    set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 410);
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -56);
    set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 775);
    set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 703);

    set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 410);
    set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -56);
    set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 775);
    set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 703);

    set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 410);
    set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -55);
    set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 775);
    set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 703);

    set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 410);
    set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -56);
    set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 739);
    set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 240);

}
if(runeO){
    move_cooldown[AT_NSPECIAL] = 0;
}