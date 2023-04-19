//#region Specials
    //#region uspecial
if move_cooldown[AT_FSPECIAL] {
  if (attack == AT_USPECIAL)  {
    window = 4;
    sound_play(asset_get("sfx_forsburn_reappear"));
     spawn_hit_fx(x, y, 13);
    vsp = -8;
  }
  if (attack == AT_NSPECIAL) {
    attack = AT_FSPECIAL;
  }
}
if (attack == AT_USPECIAL)
{
    sprite_change_offset("uspecial", 64, 94);
    set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
    uspec_spin_count = 0;
    uspec_spin_dir = 0;
    uspec_spin_old = 0;
    uspec_spin_set = 0;
    uspec_spin_set_old = 0;
    uspec_spin_point_move = 0;
    uspec_spin_point = 0;
    uspec_spin_point_old = 0;
    uspec_spin_timer = 0;
    uspec_spin_point_move_old = 0;
    uspec_spin_change = false;
    uspec_spin_dif = 0;
}

if attack == AT_UAIR and hat_object != noone
{
    attack = AT_EXTRA_2;
}

if(attack == AT_NSPECIAL){
	hatted_id = noone;
}

    //#endregion

//#endregion

//#region taunt

if (attack == AT_TAUNT && (left_down || right_down))
{
	attack = AT_TAUNT_2;
}
//#endregion

if (instance_exists(hat_object))
{
    switch (attack)
    {
        //hatless attack sprites
        case AT_JAB:
            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_hatless"));
            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hatless_hurt"));
            break;
        case AT_FTILT:
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_hatless"));
            set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hatless_hurt"));
            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
            break;
        case AT_DTILT:
            set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_hatless"));
            set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hatless_hurt"));
            break;
        case AT_UTILT:
            set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_hatless"));
            set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hatless_hurt"));
            break;
        case AT_DATTACK:
            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_hatless"));
            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hatless_hurt"));
            break;
        case AT_DAIR:
            set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_hatless"));
            set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hatless_hurt"));
            break;
        case AT_NAIR:
            set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_hatless"));
            set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hatless_hurt"));
            break;
        case AT_BAIR:
            set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_hatless"));
            set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hatless_hurt"));
            break;
        case AT_FAIR:
            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_hatless"));
            set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hatless_hurt"));
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fair2_hatless"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fair2_hatless_hurt"));
            break;
        case AT_USTRONG:
            set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_hatless"));
            set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hatless_hurt"));
            break;
        case AT_DSTRONG: //for when hatless dstrong sprite exists
            set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_2"));
           set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
           break;
        case AT_FSTRONG:
            set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_2"));
            set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_2_hurt"));
            break;
           
        
        //attacks that change based on hat or nah
        case AT_FSPECIAL:
        if move_cooldown[AT_FSPECIAL] == 0{
			fspecial_air_count += 1;
            attack = AT_FSPECIAL_2;
            //if required later change so it can't return during attacks or maybe add a cooldown to fspec while
		    //any 'high commitment' actions are being done by the hat
            hat_object.state = 2;
			hat_object.state_timer = 0;
        }
            break;
		
        case AT_NSPECIAL:
        case AT_USPECIAL:
            if (!move_cooldown[AT_FSPECIAL]) {
            // lol everything returns hat
                hat_object.state = 2;
                hat_object.state_timer = 0;
            }
            break;
            
        case AT_DSPECIAL:
            //set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
            //set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
            //set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
            attack = AT_DSPECIAL_2;
            break;
        
        
    }
}
else
{
    switch(attack)
    {
        case AT_JAB:
            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
            break;
        case AT_FTILT:
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
            set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
            break;
        case AT_DTILT:
            set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
            set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
            break;
        case AT_UTILT:
            set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
            set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
            break;
        case AT_DATTACK:
            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hatless_hurt"));
            break;
        case AT_DAIR:
            set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
            set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
            break;
        case AT_NAIR:
            set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
            set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
            break;
        case AT_BAIR:
            set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
            set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
            break;
        case AT_FAIR:
    		if instance_exists(hat_object) {
				hurtboxID.sprite_index = sprite_get("fair_hatless_hurt")
			} else {
				hurtboxID.sprite_index = sprite_get("fair_hurt")
			}
            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
            set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fair2"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
            break;
        case AT_USTRONG:
            set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
            set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
            break;
        case AT_DSTRONG: //for when hatless dstrong sprite exists
           set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
        	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
           break;
        case AT_FSTRONG:
            set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
            set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
            break;
        case AT_DSPECIAL:
            set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
            set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
            break;
    }
}
if (attack == AT_UAIR && hat_health >= 50) {
  attack = AT_EXTRA_3;
}
