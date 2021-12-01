//

if (attack == AT_DSPECIAL && window < 6)
{
    window = 6;
    window_timer = 0;
}

if ((attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1 && hitpause) || (ds_list_size(toxicArticles) > 0 && containsHitbox(toxicArticles, my_hitboxID)))
{
	if(!ds_list_contains(poisonedEnemies, hit_player_obj))
	    ds_list_add(poisonedEnemies, hit_player_obj);
    hit_player_obj.toxicStacks++;
    hit_player_obj.toxicTimer = toxicCooldown;
    if(hit_player_obj.toxicStacks > 4)
    	hit_player_obj.toxicStacks = 4;
}
if(AT_NSPECIAL_2 && my_hitboxID.hbox_num)
	sound_play(asset_get("sfx_waterhit_weak"));//sfx_poison_hit_weak

if (attack == AT_EXTRA_1)
{
	if(!variable_instance_exists(hit_player_obj, "hypnoTimer"))
		return;
	if(!ds_list_contains(hypnoEnemies, hit_player_obj))
	    ds_list_add(hypnoEnemies, hit_player_obj);
    hit_player_obj.hypnoStacks++;
    hit_player_obj.hypnoTimer = hypnoCooldown;
    if(hit_player_obj.hypnoStacks > 1)
    {
		hit_player_obj.hypnoStacks = 0;
		ds_list_remove(hypnoEnemies, hit_player_obj);
		hit_player_obj.hitpause = true;
		hit_player_obj.hitstop = 90;
		hit_player_obj.putToSleep = true;
		sound_play(asset_get("sfx_ice_sleep"));
    }	
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)
	hit_count++;

if (attack == AT_EXTRA_2)
	instance_create(hit_player_obj.x, hit_player_obj.y-hit_player_obj.char_height*0.5, "obj_article2");

#define containsHitbox(list, n)
var loop = 0;
repeat (ds_list_size(list)) 
	if (list[|loop++].toxicHb == n) 
		return true;
return false;

#define ds_list_contains(list, n)
var loop = 0;
repeat (ds_list_size(list)) if (list[|loop++] == n) return true;
return false;

#define contains(arr, n)
var loop = 0;
repeat (array_length_1d(arr)) if (arr[loop++] == n) return true;
return false;