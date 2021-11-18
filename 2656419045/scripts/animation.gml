//Handle flickering
if(invincible == 2) {
	anim_is_flickering = true;
	if(invince_time % 4 < 2 && !hitpause) visible = false;
	else visible = true;
}
else if(anim_is_flickering) {
	visible = true;
	anim_is_flickering = false;
}

// user_event(2);

// var carrier = noone; carried = noone;
if(instance_exists(carry_obj) && (carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer) && carry_obj.url == url) {
	
}

var skip_animation = false, animate_carry_obj = false;
if(instance_exists(neo_data.carried_by_id) && who_animates_first(id, neo_data.carried_by_id) == id) {
	//If we get thrown or dropped this frame, we have no way of reacting to it before it's time to draw
	//So we need to set a sprite_index now to avoid becoming an X if that happens.
	run_animation_in_pre_draw = true;
	sprite_index = sprite_get(`char_${neo_char.prefix}${(neo_char.use_alts && neo_power.has_alts)?neo_power.alt_prefix:neo_power.prefix}${neo_sprite_name}`); image_index = 0;
}
else user_event(2);

if(instance_exists(carry_obj) && (carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer) && carry_obj.url == url && who_animates_first(id, carry_obj) == carry_obj) {
	with(carry_obj) user_event(2); //The carry_obj should have skipped animating this frame, so we'll animate them now
}

#define who_animates_first(alfa, bravo)
	return((alfa.last_animation_time == bravo.last_animation_time)?bravo:alfa);