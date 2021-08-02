/*
draw_debug_text(x - 200, y + 80, "TRUE KB: " + string(orig_knock))
draw_debug_text(x - 200, y + 60, "Should KB: " + string(debugA + (get_player_damage(player) * debugB * 0.12 * knockback_adj )))
draw_debug_text(x - 200, y + 40, "Fake KB: " + string(debugA + (get_player_damage(player) * debugB * 0.12 * knockback_adj )))
draw_debug_text(x - 200, y + 0, "Hitstun: " + string(hitstun))
*/

if army_leader.debug == 1 {
	draw_debug_text(x, y + 20, "Is Clone: "+ string(is_nana))
	draw_debug_text(x, y + 100, "knockback_adj: " + string(knockback_adj))
	if is_nana {
		
	if state == PS_PRATFALL {
		draw_debug_text(x + 200, y, "You should be seeing this")
	}
		
	draw_debug_text(x - 200, y + 20, "Clown State: " + string(clownState))
	draw_debug_text(x - 200, y + 40, "Bubble Armor: " + string(soft_armor))
	draw_debug_text(x - 200, y + 60, "Should KB: " + string(debugA + (get_player_damage(player) * debugB * 0.12 * knockback_adj )))
	draw_debug_text(x - 200, y + 80, "TRUE KB: " + string(orig_knock))
	draw_debug_text(x - 200, y + 100, "Ai State: " + string(nana_state))
		
	draw_debug_text(x, y + 40, "USPECIAL cooldown: "+ string(move_cooldown[AT_USPECIAL]))
	draw_debug_text(x, y + 60, "Airdodge Timer: "+string(dodgeTime))
	draw_debug_text(x, y + 80, "Fake KB: " + string(debugA + (get_player_damage(player) * debugB * 0.12 * knockback_adj )))
	} else {
		draw_debug_text(x, y + 20, "Grabbed Player: " +  string(anemoneGrab))
	}
	

}

if canTutorial {
	if !is_nana && debug == 1 {
		draw_sprite_ext(sprite_get("hudCooldown"), 0, 0,  room_height * returnRatio, room_width, 1, 0, c_white, .5)
		draw_sprite_ext(sprite_get("hudCooldown"), 2, room_width * returnRatioX, 0, 1, room_height, 0, c_white, .5)
		draw_sprite_ext(sprite_get("hudCooldown"), 2, room_width * (1 - returnRatioX), 0, 1, room_height, 0, c_white, .5)
		draw_sprite_ext(sprite_get("hudCooldown"), 4, x + returnMoneX, 0, 1, room_height, 0, c_white, .5)
		draw_sprite_ext(sprite_get("hudCooldown"), 4, x - returnMoneX, 0, 1, room_height, 0, c_white, .5)
	}
}

//draw_debug_text(x, y + 20, "State timer: " +  string(state_timer))
//draw_debug_text(x - 200, y + 20, "Has Airdodge: " + string(has_airdodge))



if is_nana {
	//draw_debug_text(x - 200, y + 100, "Ai State: " + string(nana_state))
	draw_sprite_ext(sprite_get("hudBlack"), 0, x,y - char_height - 48, .5, 1, 0, c_white, 1)
	if "is_bubble" !in self  {
		
	if army_leader.nanaDamage < 10 {
	draw_debug_text(x - 8, y - char_height - 44, string(army_leader.nanaDamage) + "%")
	} else {
		if army_leader.nanaDamage < 100 {
			draw_debug_text(x - 12, y - char_height - 44, string(army_leader.nanaDamage) + "%")
		} else {
			draw_debug_text(x - 16, y - char_height - 44, string(army_leader.nanaDamage) + "%")
		}
	}
		//draw_debug_text(x - 8, y - char_height - 44, string(army_leader.nanaDamage) + "%")
	}
} else {
	if (attack == AT_TAUNT && invincible) && free {
		draw_sprite_ext(sprite_get("plat"), 0, x,  y, 1, 1, 0, c_white, 1)
	}
}



shader_start();
if instance_exists(army) {
	if  army.x <= view_get_xview() - 32 {
		draw_sprite_ext(sprite_get("hudFish"), 0, view_get_xview() + 35,  armyHudY - 21, 1, 1, 0, c_white, 1)
	}
	if  army.x >= view_get_xview() + view_get_wview() + 32 {
		draw_sprite_ext(sprite_get("hudFish"), 0, view_get_xview() + view_get_wview() - 35,  armyHudY - 21, 1, 1, 0, c_white, 1)
	}
	if  army.y <= view_get_yview() + 16 {
		draw_sprite_ext(sprite_get("hudFish"), 0, armyHudX + 1,  view_get_yview() + 35, 1, 1, 0, c_white, 1)
	}
	if  army.y >= view_get_yview() + view_get_hview() {
		draw_sprite_ext(sprite_get("hudFish"), 0, armyHudX + 1, view_get_yview() + view_get_hview() - 85, 1, 1, 0, c_white, 1)
	}
}

if instance_exists(bubble) && bubble.bubbleState == 1 {
	if  bubble.x <= view_get_xview() - 32 {
		draw_sprite_ext(sprite_get("hudBubble"), 0, view_get_xview() + 35,  bubbleHudY - 21, 1, 1, 0, c_white, 1)
	}
	if  bubble.x >= view_get_xview() + view_get_wview() + 32 {
		draw_sprite_ext(sprite_get("hudBubble"), 0, view_get_xview() + view_get_wview() - 35,  bubbleHudY - 21, 1, 1, 0, c_white, 1)
	}
	if  bubble.y <= view_get_yview() + 16 {
		draw_sprite_ext(sprite_get("hudBubble"), 0, bubbleHudX + 1,  view_get_yview() + 35, 1, 1, 0, c_white, 1)
	}
	if  bubble.y >= view_get_yview() + view_get_hview() {
		draw_sprite_ext(sprite_get("hudBubble"), 0, bubbleHudX + 1, view_get_yview() + view_get_hview() - 85, 1, 1, 0, c_white, 1)
	}
}
shader_end();



//draw_debug_text(x, y - 24, string(bubbleState))