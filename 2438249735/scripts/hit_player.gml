///
finishercd = 0

if my_hitboxID.damage > 2 {
if invitimer > 0 && 
my_hitboxID.attack != AT_JAB && my_hitboxID.attack != AT_FSPECIAL
&& my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_USPECIAL && my_hitboxID.type == 1 && my_hitboxID.attack != AT_TAUNT {
        hitstop += 30
    hit_player_obj.hitstop += 20


	set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
    


    invitimer = -1




    spawn_hit_fx(hit_player_obj.x + 10 * spr_dir, hit_player_obj.y - 40, shit5)
    
    target = hit_player_obj
} 
    

}




    
    if my_hitboxID.type == 1 or (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
    create_hitbox(AT_NSPECIAL, 3, floor(hit_player_obj.x), floor(hit_player_obj.y) - 40)
    		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 3 - random_func(1,6,true));
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -4 - random_func(2,4,true));
    }