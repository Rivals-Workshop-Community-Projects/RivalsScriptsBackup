//

move_cooldown[AT_USPECIAL] = 0;

if(state == PS_ATTACK_GROUND && attack == AT_DSPECIAL && window > 3 && instance_exists(head))
{
    doDspecialKnockback = true;
    set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, enemy_hitboxID.kb_angle);
    set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, enemy_hitboxID.kb_value);
    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, enemy_hitboxID.kb_scale);
    set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, enemy_hitboxID.hit_flipper);
    set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, enemy_hitboxID.hitpause);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, enemy_hitboxID.hitpause_growth);
}

if(enemy_hitboxID.player == player && enemy_hitboxID.attack == AT_NSPECIAL)
{
	take_damage(player, -1, 5);
	vsp = -orig_knock; 
	hsp = (random_func(0, 2, false) - 1) * 0.5 * orig_knock;
	old_hsp = hsp;
	old_vsp = vsp;
	
    //knock_dir = 0;
    //orig_knock = 0;
	//hitstun = 5;
	//hitstun_full = 5;
	//should_make_shockwave = true;
	
	//print(knock_dir);//-> knock_dir is 270 here, so sprite is flying down... fixed in animation
	//knock_dir = 90;
	//set_state(free ? PS_HITSTUN : PS_HITSTUN_LAND);
	didExplosion = true;
}