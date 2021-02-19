//update

//rainbow alt
hue+=1;
if (hue>255) {hue-=255;}

color_rgb=make_color_rgb(84, 72, 207); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot( 11, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();

color_rgb=make_color_rgb(74, 39, 163); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot( 11, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();

//update.gml
if (state == PS_WALL_JUMP){
    move_cooldown[AT_DSPECIAL] = 0;
}


//runes
if (has_rune("A")){
    set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_chungus"));
    set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 65);
    set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 170);
    set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -110);

    set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_chungus"));
    set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 70);
    set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 175);
    set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -95);
}

if (has_rune("B")){
    knockback_adj = .85;;
}

if (has_rune("C")){
    set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 7);
    
    set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 7);
}

if (url != 2202646888){
	player = -1;
	spawn_hit_fx(x,y,0);
}

if (has_rune("E")){
    set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 200);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -13);
    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 50);
    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 75);
    set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 18);
    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.0);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1.0);
    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 197);
    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
}

if (has_rune("F")){
    max_djumps = 4;
}

if (has_rune("G")){
    set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
    
    set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 11);
}

if (has_rune("I")){
    set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
    
    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.25);
    set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
    
    set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.25);
    set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.45);
    
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
        if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
            soft_armor = 10.25;
        }
    }
}

if (has_rune("J")){
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -35);
    set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 105);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 105);
    set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 25);
    set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3);
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .7);
    set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("ping"));
}

if (has_rune("K")){
    speed_mult = 14;
    angle_change = 2;
}

if (has_rune("N")){
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 19);
}

if (has_rune("M")){

    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 1);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 80);
    set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 80);
    set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 3);
    set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 30);
    set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 1.4);
    set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 10);
    set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(AT_TAUNT, 2, HG_EXTRA_CAMERA_SHAKE, -1);
    set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, -1);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
    
    
    if (state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD){
        if (!hitstop && !hitpause){
            if (((hsp >= 1.5 || hsp <= -1.5) || vsp != 0) && window == 1 && state_timer > 4){
                create_hitbox( AT_TAUNT, 2, x, y );
            }
        }
    }
}

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 3;
    trummelcodecsprite1 = sprite_get("eggdoglode");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "el huevo el huevo el huevo";
    trummelcodecline[page,2] = "el huevo el huevo el huevo";
    trummelcodecline[page,3] = "el huevo el huevo el huevo";
    trummelcodecline[page,4] = "el huevo el huevo el huevo";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "So True";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "So True";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 


    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "so true";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //repeat...
}