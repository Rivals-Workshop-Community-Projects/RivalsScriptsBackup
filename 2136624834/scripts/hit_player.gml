///
intro = 1

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 5 {
   hit_player_obj.spr_dir = startdir 
}


if timestop < 100 {
move_cooldown[AT_FSPECIAL_2] = min(10 + hit_player_obj.hitstop*5, 60)
}

if introhit = 0 {
	introhit = 1
}

hit_player_obj.has_wall_jump = true 

if my_hitboxID.attack != AT_USPECIAL or (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num = 1) {
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1 {
    fstronghit = 3
}


if my_hitboxID.attack == AT_FSTRONG {
hit_player_obj.hsp = 0
hit_player_obj.vsp = 0
}

if my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_DSTRONG {
if window <= 4 {
	grabbed = true
}
}

if timestop < 100 && timefreeze < 1 && (my_hitboxID.attack != AT_USPECIAL) && move_cooldown[AT_DSPECIAL] <= 10{
    
    if timestop < 95 {
    timestop += my_hitboxID.damage * 1
    } else {
     timestop = 101
    }
}

if timefreeze > 40 {
	
	with hit_player_obj {
		take_damage (player, -1, floor (other.my_hitboxID.damage*-0.8) )
	}
    
    finaldir = spr_dir
    
    set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
    set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 7);
    set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
    set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
    set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -60);
    set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
    set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
    set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 410);
    set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 410);
    set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
    set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
    set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5 + floor(my_hitboxID.damage/4) );
    set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, my_hitboxID.kb_angle);
    set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
    set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
    set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, floor(my_hitboxID.hitpause)/2);
    set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, my_hitboxID.hitpause_growth/2);
    set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
    set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
    set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 9);
    set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 20);

}



}


if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 && timestop < 100{
   timestop += my_hitboxID.damage * 0.4
}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 && timefreeze > 40 {
	uspechit = 1
}

if my_hitboxID.attack == AT_NSPECIAL && timestop < 100{
   timestop += my_hitboxID.damage * 0.2
}

if my_hitboxID.attack == AT_FSPECIAL && timestop < 100{
   timestop += my_hitboxID.damage * 0.4
}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 && timestop < 100{
   timestop += my_hitboxID.damage * 1
}

if my_hitboxID.attack == AT_FAIR {
	fairhit = 1
}



