//if (my_hitboxID.attack == AT_DAIR)
//{
   //if (my_hitboxID.hbox_num = 1) old_vsp = -4;
   //if (my_hitboxID.hbox_num > 1) old_vsp = -6;
//}

//hit_player.gml
if (my_hitboxID.attack == AT_FSPECIAL) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack(AT_FSPECIAL_2);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

//buying (gaining money on hit)
switch (my_hitboxID.attack)
{

    //10$ hits
    case AT_DAIR:
    case AT_UAIR:
        buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
        buy_vfx.depth = depth - 1;	
        buy_vfx.spr_dir = 1;
        sound_play(sound_get("bcm_buy"));
        money += 10;
    break;

    //15$ hits
    //case AT_UAIR:
    //    buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
    //    buy_vfx.depth = depth - 1;	
    //    buy_vfx.spr_dir = 1;
    //    sound_play(sound_get("bcm_buy"));
    //    money += 15;
    //break;

    //30$ hits
    case AT_JAB:
        buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
        buy_vfx.depth = depth - 1;	
        buy_vfx.spr_dir = 1;
        sound_play(sound_get("bcm_buy"));
        money += 30;
    break;

    //40$ hits
    case AT_FTILT:
        buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
        buy_vfx.depth = depth - 1;	
        buy_vfx.spr_dir = 1;
        sound_play(sound_get("bcm_buy"));
        money += 40;
    break;

    //50$ hits
    case AT_NSPECIAL:
    case AT_USPECIAL:
        buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
        buy_vfx.depth = depth - 1;	
        buy_vfx.spr_dir = 1;
        sound_play(sound_get("bcm_buy"));
        money += 50;
    break;

    //dstrong
    case AT_DSTRONG:
        buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
        buy_vfx.depth = depth - 1;	
        buy_vfx.spr_dir = 1;
        sound_play(sound_get("bcm_buy"));
        money += 15 + floor(strong_charge/4);
    break;

}

//selling (moves empowered by consuming money)
switch (my_hitboxID.attack)
{

    //F-Air
    case AT_FAIR:
        if (my_hitboxID.hbox_num = 1 && money >= 200 && !shield_down && !sold) 
        {
            sold = true;
            sold_player = hit_player_obj;
        }
        if (my_hitboxID.hbox_num = 2 && !has_sold)
        {
            sell_vfx = spawn_hit_fx(x, y - char_height/2, sell_fx);
            sell_vfx.depth = depth - 1;	
            sell_vfx.spr_dir = 1;
            money -= 200
            money_lost = 200;
            money_lost_gui_timer = 80;
            sound_play(sound_get("bcm_sell"));
            has_sold = true;
        }
    break;

    //U-Strong
    case AT_USTRONG:
        if (my_hitboxID.hbox_num <= 3 && money >= 300 && !shield_down && !sold)
        {
            sold = true;
            sold_player = hit_player_obj;
        }
        if (my_hitboxID.hbox_num = 4 && !has_sold) 
        {
            sell_vfx = spawn_hit_fx(x, y - char_height/2, sell_fx);
            sell_vfx.depth = depth - 1;	
            sell_vfx.spr_dir = 1;
            money -= 300
            money_lost = 300;
            money_lost_gui_timer = 80;
            sound_play(sound_get("bcm_sell"));
            has_sold = true;
        }
    break;

    //F-Strong
    case AT_FSTRONG:
        if (my_hitboxID.hbox_num <= 2 && money >= 400 && !shield_down && !sold)
        {
            sold = true;
            sold_player = hit_player_obj;
        }
        if (my_hitboxID.hbox_num = 3 && !has_sold) 
        {
            sell_vfx = spawn_hit_fx(x, y - char_height/2, sell_fx);
            sell_vfx.depth = depth - 1;	
            sell_vfx.spr_dir = 1;
            money -= 400
            money_lost = 400;
            money_lost_gui_timer = 80;
            sound_play(sound_get("bcm_sell"));
            has_sold = true;
        }
    break;

}
