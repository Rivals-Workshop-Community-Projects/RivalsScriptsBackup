//update

if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
|| (attack != AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)))
	hurtboxID.image_angle = 0;
	
for(var i = 0; i < ds_list_size(poisonedEnemies); i++)
{
	var enemy = poisonedEnemies[|i];
	if(enemy.state == PS_DEAD || enemy.state == PS_RESPAWN)
	{
		enemy.toxicStacks = 0;
		ds_list_remove(poisonedEnemies, enemy);
		break;
	}
	enemy.toxicTimer--;
	if(enemy.toxicTimer % toxicDmgCooldown == 0)
	{
		take_damage(enemy.player, player, 1);//floor(ease_linear(toxicDmgMin, toxicDmgMax, enemy.toxicStacks, 4)));
		sound_play(asset_get("sfx_waterhit_weak"));//sfx_poison_hit_weak
		var fx = spawn_hit_fx(enemy.x, enemy.y-char_height*0.25, toxicHit);//67 6 116 151
		fx.depth = depth - 1;
	}
	
	if(enemy.toxicTimer <= 0)
	{
		enemy.toxicTimer = toxicCooldown;
		enemy.toxicStacks--;
		if(enemy.toxicStacks <= 0)
			ds_list_remove(poisonedEnemies, enemy);
	}
}

for(var i = 0; i < ds_list_size(hypnoEnemies); i++)
{
	var enemy = hypnoEnemies[|i];
	if(enemy.state == PS_DEAD || enemy.state == PS_RESPAWN)
	{
		enemy.hypnoStacks = 0;
		ds_list_remove(hypnoEnemies, enemy);
		break;
	}
	enemy.hypnoTimer--;
	if(enemy.hypnoTimer <= 0)
	{
		enemy.hypnoTimer = hypnoCooldown;
		enemy.hypnoStacks--;
		if(enemy.hypnoStacks <= 0)
			ds_list_remove(hypnoEnemies, enemy);
	}
}


if(taunt_down && state == PS_IDLE)
	set_attack(AT_TAUNT);
	
	
if(!free)
	nspecialAvailable = true;
if(nspecialType > 0)
	move_cooldown[AT_NSPECIAL] = 1000;
else
	move_cooldown[AT_NSPECIAL] = nspecialAvailable ? 0 : 100;


if(!has_walljump && has_walljumpLast)
	move_cooldown[AT_USPECIAL] = 0;

if(!free)
	move_cooldown[AT_USPECIAL] = 0;
	
	
if(taunt_down)
{
	if(right_down && !right_down_last)
		nspecialType++;
	if(left_down && !left_down_last)
		nspecialType--;
		
	if(attack_down && !attack_down_last)
		nspecialType = 0;
	if(special_down && !special_down_last)
		nspecialType = 1;
	if(strong_down && !strong_down_last)
		nspecialType = 2;
	if(shield_down && !shield_down_last)
		nspecialType = 3;
		
	if(nspecialType >= nspecialTypes)
		nspecialType = 0;
	if(nspecialType < 0)
		nspecialType = nspecialTypes-1;
		
	if(free && has_airdodge)
		savedAirdodge = true;
	has_airdodge = false;
	
	if(state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_TURN)
		set_attack(AT_TAUNT);
	move_cooldown[AT_NSPECIAL] = 1000;//also in set_attack preventing other inputs via set state
	if(free)
	{
		move_cooldown[AT_FSPECIAL] = 1000;
		move_cooldown[AT_DSPECIAL] = 1000;
		move_cooldown[AT_BAIR] = 1000;
		move_cooldown[AT_DAIR] = 1000;
	}
	clear_button_buffer(PC_ATTACK_PRESSED);
	clear_button_buffer(PC_SHIELD_PRESSED);
	clear_button_buffer(PC_SPECIAL_PRESSED);
	clear_button_buffer(PC_STRONG_PRESSED);
	clear_button_buffer(PC_LEFT_HARD_PRESSED);
	clear_button_buffer(PC_RIGHT_HARD_PRESSED);
	clear_button_buffer(PC_LEFT_STICK_PRESSED);
	clear_button_buffer(PC_RIGHT_STICK_PRESSED);
}
else
{	
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_BAIR] = 0;
	move_cooldown[AT_DAIR] = 0;
	if(savedAirdodge)
	{
		savedAirdodge = false;
		has_airdodge = true;
	}
}

if(didExplosion)
{
	didExplosion = false;
	var hor = 0;
	var vert = 0;
    with(oPlayer)
    {
        if(self != other && hitpause)
        {
			hor += hit_player_obj.x - x;
			vert += hit_player_obj.y - y;
        }
    }
    if(hor != 0 || vert != 0)
    {
    	if(vert == 0)
    		vert = -abs(hor);
        var length = sqrt(hor * hor + vert * vert);
        hsp = (hor/length) * orig_knock;
        vsp = (vert/length) * orig_knock;
		old_hsp = hsp;
		old_vsp = vsp;
    }
    
    if(abs(old_hsp) < abs(old_vsp))
    	fixExplosionHurtSpr = old_vsp < 0 ? sprite_get("uphurt") : sprite_get("downhurt");
	else
	    fixExplosionHurtSpr = abs(old_hsp) < 8 ? sprite_get("hurt") : sprite_get("bighurt");
	fixExplosionHurt = true;
}

with(oPlayer) //disable hit on dspecial self hit
{
	if(self != other && hitpause && last_player == other.player && last_attack == AT_NSPECIAL && last_hbox_num == 2)
	{
		state = prev_state;
		hitpause = false;
		old_hsp = 0;
		old_vsp = 0;
	}
}

if(didFstrong && state != PS_ATTACK_GROUND)
{
	didFstrong = false;
	sound_stop(asset_get("sfx_boss_final_charge"));
}


for(var i = 0; i < ds_list_size(poisonedEnemies); i++)
{
	var poisonedEnemy = poisonedEnemies[|i];
	if(!instance_exists(poisonedEnemy) || poisonedEnemy == noone)
		ds_list_remove(poisonedEnemies, poisonedEnemy);
}

for(var i = 0; i < ds_list_size(toxicArticles); i++)
{
	var toxicCloud = toxicArticles[|i];
	if(!instance_exists(toxicCloud) || toxicCloud == noone)
		ds_list_remove(toxicArticles, toxicCloud);
}

has_walljumpLast = has_walljump;

right_down_last = right_down;
left_down_last = left_down;
attack_down_last = attack_down;
special_down_last = special_down;
strong_down_last = strong_down;
shield_down_last = shield_down;