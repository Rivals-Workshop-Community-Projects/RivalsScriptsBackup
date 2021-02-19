if (state = PS_DOUBLE_JUMP){
    image_index = state_timer * .19;
}

if (state = PS_RESPAWN){
    sprite_index = sprite_get("respawn"); 
}

if (state == PS_SPAWN) {
    if (introTimer < 22 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    if (introTimer == 3 && introTimer2 == 0){
    	sound_play( sound_get("intro"));
    }
}
//	sprite_index = sprite_get("nothing2"); 
if (runeL || has_rune("L")){
    runeL = true;
    sprite_index = sprite_get("nothing2"); 
    hurtbox_spr = sprite_get("idle_hurtbox_big");
    crouchbox_spr = sprite_get("crouch_hurtbox_big");
    set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("crouch_hurtbox_big"));
    set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurtbox_big"));
    
    walk_speed = 3.5;
    dash_speed = 7.25;
    jump_speed = 13.5;
    short_hop_speed = 8.5;
    djump_speed = 12.5;
    leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 4;
    walljump_hsp = 8;
    walljump_vsp = 12;
    knockback_adj = .8;
    wave_land_adj = 1.5; 
    techroll_speed = 12;
    air_dodge_speed = 8.5;
    roll_forward_max = 10; //roll speed
    roll_backward_max = 10;

    
    set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 76);
    set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -80);
    set_hitbox_value(AT_JAB, 1, HG_WIDTH, 94);
    set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 104);
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 80);
    set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -124);
    set_hitbox_value(AT_JAB, 2, HG_WIDTH, 120);
    set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 156);
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
    
    set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 86);
    set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -78);
    set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 140);
    set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 100);
    set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 16);
    set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
    
    set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 88);
    set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -22);
    set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 120);
    set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 72);
    set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 10);
    set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
    
    set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 52);
    set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -74);
    set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 108);
    set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 112);
    set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 50);
    set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -156);
    set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 100);
    set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 102);
    set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 12);
    set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -80);
    set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -162);
    set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 152);
    set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 112);
    set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 12);
    set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -80);
    set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -82);
    set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 102);
    set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 114);
    set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 12);
    set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 9);
    
    set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 16);
    set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -68);
    set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 144);
    set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 144);
    set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 14);
    set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
    
    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 100);
    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -52);
    set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 120);
    set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 120);
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 28);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("coconut_big"));
    set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("coconut_big"));
    set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 13);
    set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
    
    set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 82);
    set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -48);
    set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 150);
    set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 154);
    set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 25);
    set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -62);
    set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -42);
    set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 150);
    set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 154);
    set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 25);
    set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
    
    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 8);
    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -162);
    set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 132);
    set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 136);
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 27);
    set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
    
    set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 12);
    set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -90);
    set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 250);
    set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 130);
    set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 12);
    set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -90);
    set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 250);
    set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 130);
    set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
    
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, -78);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -142);
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 74);
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 18);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, -26);
    set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -166);
    set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 122);
    set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 86);
    set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 18);
    set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 74);
    set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -120);
    set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 76);
    set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 78);
    set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 18);
    set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 96);
    set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -52);
    set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 82);
    set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 106);
    set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 16);
    set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 10);
    
    set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -52);
    set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -40);
    set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 114);
    set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 92);
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 14);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -58);
    set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -40);
    set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 126);
    set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 92);
    set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
    
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 12);
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 84);
    set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 84);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 34);
    set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 18);
    set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
    set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
    set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 13);
    set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
    set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 9);
    
    set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 10);
    set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -100);
    set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 120);
    set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 120);
    set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 13);
    set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 44);
    set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -72);
    set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 108);
    set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 106);
    set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 13);
    set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
    
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 104);
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -84);
    set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 140);
    set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 120);
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 104);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -84);
    set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 140);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 120);
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 12);
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 104);
    set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -84);
    set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 140);
    set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 120);
    set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 15);
    set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 104);
    set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -84);
    set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 140);
    set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 120);
    set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 18);
    set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 104);
    set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -84);
    set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 140);
    set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 120);
    set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 25);
    set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
    
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 68);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -84);
    set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 132);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 140);
    set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 6);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 6);
    set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_TAUNT, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_TAUNT, 4, HG_BASE_KNOCKBACK, 7);
 
    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -40);
    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 100);
    set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 100);
    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 40);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 100);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 100);
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 120);
    set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 100);
    set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 100);
    set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -40);
    set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 100);
    set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 100);
    set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 40);
    set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 100);
    set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 100);
    set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 120);
    set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 100);
    set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 100);
    set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 11);
     
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 38);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -26);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 136);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 88);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 62);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -56);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 136);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 88);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 38);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -26);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 136);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 88);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
    
    if (runeH || has_rune("H")){
	set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 2000);
}
    
}

if (state == PS_RESPAWN){
        move_cooldown[AT_USPECIAL] = 100;
    }

