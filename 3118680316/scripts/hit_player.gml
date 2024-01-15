//hit_player - called when one of your hitboxes hits a player

//#region Bubble Explosion
if (my_hitboxID.attack == AT_EXTRA_2)
{
	// Add hitpause to bubbles when explosion lands
	var bubble_list_size = ds_list_size(soap_bubbles);
	var bubbleindex = 0;
	
	for (bubbleindex = 0; bubbleindex < bubble_list_size; bubbleindex++) 
	{
		var bubble = ds_list_find_value(soap_bubbles, bubbleindex);
		if(bubble.linked_hitbox != noone)
		{
			if(bubble.linked_hitbox == my_hitboxID)
			{
				bubble.hitpause = get_hitstop_formula(get_player_damage(hit_player), my_hitboxID.damage, my_hitboxID.hitpause, my_hitboxID.hitpause_growth, my_hitboxID.extra_hitpause);
			}
		}
	}
}
//#endregion Bubble Explosion

//#region Bubble
// Use the highest knockback value of a bubble in a cluster while hitpause lasts
// Prevents smaller bubbles from cancelling large knockback and hitpause
if (my_hitboxID.attack == AT_EXTRA_1 || my_hitboxID.attack == AT_EXTRA_2)
{
	if(hit_player_obj.last_hit_bubble_size < my_hitboxID.hbox_num)
	{
		hit_player_obj.last_hit_bubble_size = my_hitboxID.hbox_num;
	}
	
	// Manually apply damage to account for multiple bubble hit damage decay
	hit_player_obj.bubble_hit_count++;
	take_damage(hit_player_obj.player,my_hitboxID.player, max(1, ceil(my_hitboxID.bubbledamage / hit_player_obj.bubble_hit_count) ) );
	
	// Calculate knockback manually
	var NewKnockback = get_kb_formula(
		get_player_damage(hit_player_obj.player), 
		hit_player_obj.knockback_adj, 
		1.0, 
		my_hitboxID.bubbledamage, 
		my_hitboxID.kb_value, 
		my_hitboxID.kb_scale
		);
		
	var distancedecay = 0.7;
	var timetodecay = 15;
	
    var percentLifetime = max(ease_quartIn(100, distancedecay*100, my_hitboxID.hitbox_timer, timetodecay), distancedecay*100)/100;
    
    NewKnockback *= percentLifetime;
		
	// Calculate hitstop manually
	var NewHistop = get_hitstop_formula(
		get_player_damage(hit_player_obj.player),
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_DAMAGE),
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_BASE_HITPAUSE), 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_HITPAUSE_SCALING), 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_EXTRA_HITPAUSE));
		
	// Knockback is the highest between the previous knockback value, the value of the old bubble hitting the player, the value of this bubble hitting the player, or the currently slated knockback
	hit_player_obj.orig_knock = max(NewKnockback, hit_player_obj.last_knockback);
	
	hit_player_obj.bubble_knockback = max(my_hitboxID.kb_value, hit_player_obj.bubble_knockback);
	hit_player_obj.bubble_knockback_scale = max(my_hitboxID.kb_scale, hit_player_obj.bubble_knockback_scale);
	hit_player_obj.bubble_damage = max(my_hitboxID.bubbledamage, hit_player_obj.bubble_damage);
	
	if(NewHistop > hit_player_obj.hitstop)
	{
		hit_player_obj.hitstop = NewHistop;
		hit_player_obj.hitstop_full = NewHistop;
	}
}
//#endregion Bubble

//#region Uspecial grab code
if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num <= 2 && !hit_player_obj.super_armor && hit_player_obj.state_cat == SC_HITSTUN)
{
    hit_player_obj.awatsu_uspecial_grab = self;
} 
else 
{
    hit_player_obj.awatsu_uspecial_grab = noone;
}
//#endregion Uspecial grab code

if( hit_player_obj.orig_knock > 0 )
{
	hit_player_obj.last_knockback = hit_player_obj.orig_knock;
}
