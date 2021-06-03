if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "NOT FOR CASUALS");
}

// Writes random dialogue on respawn platform
if (state == PS_RESPAWN){
    if (state_timer >= 1){
        draw_debug_text(x - Platform_Text[platform_number, 0], y + 13, Platform_Text[platform_number, 1]);
    }
}

//lmao nope
/*
if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND) 
{
   var sword_index = image_index; //copied from character
   if (window == 1 || window == 2){
      sword_index += (strong_charge/60)*6; //animate with strong_charge
   } 
   else 
   {
      sword_index += 6; //skip the extra frames entirely
   }
   draw_sprite_ext(sprite_get("fstrong_sword"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}
*/

//DSPECIAL shenans
if (combust_timer > 0)
{
	var image =  (1 - (combust_timer/combust_timer_max)) * sprite_get_number(combust_spr);
	draw_sprite(combust_spr, image, x, y-30);
}


//DSPECIAL shenans
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) 
&& (attack == AT_DTHROW) && (window == 2)
{
	var image = (limit_charge/limit_charge_max) * sprite_get_number(limit_spr);
	draw_sprite(limit_spr, image, x, y-4);
}

user_event(12);

//draw_debug_text( x-50, y+15, "paperwork: " + string( paperwork ));
//draw_debug_text( x-50, y+15, "state timer: " + string( state_timer ));