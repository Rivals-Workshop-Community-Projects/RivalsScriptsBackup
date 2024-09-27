//

if(state == PS_CROUCH && (!disguised || disguisedAsSelf))
{
	var crouchMoveDir = 0;
	if(right_down)
		crouchMoveDir++;
	if(left_down)
		crouchMoveDir--;
	hsp = crouchMoveDir * 1;
    go_through = true;
}
    

// if(perfect_dodged && !perfect_dodged_last)
// {
//     // perfect_dodged = false;

//     if(cloneChar != noone)
//         instance_destroy(cloneChar);
//     cloneChar = instance_create(x, y, "oPlayer");
//     cloneChar.custom_clone = true;
//     cloneChar.disable_ai = true;
//     //TODO: restore any percentage that is dealt to the clone + kill it after a delay
    
//     //TODO: move below into user event -> why does it not work at all?
// 	invis = true;
// 	clear_button_buffer(PC_SPECIAL_PRESSED);
// 	invisExitStateTimer = 0;
// 	invisExitAnimationIndex = 0;
// 	sound_play(sound_get("spy_cloak"));
    
// 	invisStateTimer = 0;
// 	invisStartAnimationIndex = 0;
// }


/*if(taunt_down && !spawnedClone)
{
    spawnedClone = true;
    
    var p = instance_create(x,y,"oPlayer");
    //p.custom_clone = false;
    //p.image_index = asset_get("bear_idle");
    p.clones_player_id = 1;
    //-> try to make it from other player?
    
    //with(asset_get("etalus"))
    with(oPlayer)
    {
        if(player != 1)
            continue;
        //var p = instance_create(x,y,"oPlayer");
        //p.image_index = asset_get("bear_idle");
    }
}*/


/*with(oPlayer)//pHitBox//obj_article1
{
	print(sprite_get_name(sprite_index));
}*/


if(perfect_dodged && !perfect_dodged_last)
	sound_play(sound_get("parry_success"), false, noone, 0.75);

    
user_event(0);//Update Invisibility

user_event(1);//Update Disguise/Taunt



invisAlphaLast = invisAlpha;
state_timer_last = state_timer;

has_walljumpLast = has_walljump;

taunt_down_last = taunt_down;
right_down_last = right_down;
left_down_last = left_down;
up_down_last = up_down;
down_down_last = down_down;
right_stick_down_last = right_stick_down;
left_stick_down_last = left_stick_down;
up_stick_down_last = up_stick_down;
down_stick_down_last = down_stick_down;
attack_down_last = attack_down;
special_down_last = special_down;
strong_down_last = strong_down;
shield_down_last = shield_down;
jump_down_last = jump_down;
perfect_dodged_last = perfect_dodged;

lastState = state;
matchTimer++;
