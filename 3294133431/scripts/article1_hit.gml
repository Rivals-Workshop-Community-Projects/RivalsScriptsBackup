//

 if(state == "dead")
 	return;

if(lastHitbox >= enemy_hitboxID)//TODO: why is this needed to prevent multi hits from some attacks?
    return;
lastHitbox = enemy_hitboxID;


hp -= enemy_hitboxID.damage;
// print(hp);
	
 //   	if(hp <= hpMax / 3)
 //   		state = 8;
 //   	else if(hp <= hpMax / 1.5)
 //   		state = 7;
 //   	else if(hp <= hpMax)
 //   		state = 6;
	// 	state_timer = 0;
	// 	//TODO: add proper damaged states


// with(hitbox.player_id) 
// {
//     if(!has_hit) 
//     {
//         if(hitbox.type == 1)
//         {
//             var pause = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_BASE_HITPAUSE);
//             print(pause);
// 			hitPause(self, pause);
// 			hitPause(other, pause*2);
//         }
//         has_hit = true;
//         sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
//         spawn_hit_fx(other.x, other.y-32, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
//     }
// }

//TODO: why crashes? at least need the sound? or use own?
// sound_play(get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_HIT_SFX));
// spawn_hit_fx(x, y, get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_VISUAL_EFFECT));

spawn_hit_fx(x, y, 13);
sound_play(sound_get("wrench_hit_world"), false, noone, 0.5, 1);


//TODO: hitpause needed? works without this?
#define hitPause(target, value)
with(target)
{
    hitpause = true;
    hitstop = value;
    hitstop_full = value;
    old_hsp = hsp;
    old_vsp = vsp;
}