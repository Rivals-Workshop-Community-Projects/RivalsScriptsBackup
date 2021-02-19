//article1_update
if (projectile)
{
	var hitted = instance_place(x,y,oPlayer);
	if (hitted != noone && hitted != player_id && !stasis)
	{
		

		if (hitted.state == PS_PARRY && hitted.state_timer <= hitted.dodge_active_frames+hitted.dodge_startup_frames)
		{
			hsp *= -1;
			vsp *= -1;
		}
		else 
		{
			detonate = true;	
		}
	}

}

if (!stasis)
{
	vsp += 0.4;
	if (free == false)
	{
	    detonate = true;
	}
}
else if (player_id.state != PS_ATTACK_GROUND)
{
	instance_destroy();
}

if (detonate)
{
    var HB1 = create_hitbox(AT_EXTRA_1,1,x,y);
	HB1.player = player;
	var HB2 = create_hitbox(AT_EXTRA_1,2,x,y);
	HB2.player = player;
	if (player_id.fxG)
		spawn_hit_fx(x,y,hit_fx_create(sprite_get("bigExplosionG"), 30))
	else
		spawn_hit_fx(x,y,hit_fx_create(sprite_get("bigExplosion"), 30))
	sound_play(sound_get("plague_tracer_explode"));
	instance_destroy();
    
}

image_index += img_vsp;


//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY
