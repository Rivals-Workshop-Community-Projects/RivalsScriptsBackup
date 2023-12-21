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
	
	var NewKnockback = get_kb_formula(
		get_player_damage(hit_player_obj.player), 
		hit_player_obj.knockback_adj, 
		1.0, 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_DAMAGE), 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_BASE_KNOCKBACK), 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_KNOCKBACK_SCALING)
		);
	
	var NewHistop = get_hitstop_formula(
		get_player_damage(hit_player_obj.player),
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_DAMAGE),
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_BASE_HITPAUSE), 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_HITPAUSE_SCALING), 
		get_hitbox_value(my_hitboxID.attack,hit_player_obj.last_hit_bubble_size,HG_EXTRA_HITPAUSE));
		
	if(NewKnockback > hit_player_obj.orig_knock)
	{
		hit_player_obj.orig_knock = NewKnockback;
	}
	
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

