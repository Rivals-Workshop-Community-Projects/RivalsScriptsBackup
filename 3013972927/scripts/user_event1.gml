//voice lines code

if(is_onBeat)
{
switch (attack){
	// Perfect Beat Hit Initial
	case AT_JAB:
	
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true );
	hit_onBeat = false;
	}
		
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
	    sound_play(sound_get("chai_clap1"));
	    sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_JAB, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
		}
		
			if window = 4 && window_timer = 4 && !hitpause
			{
		//	sound_play(sound_get("chai_perfect_beat"));
			hit_onBeat = true;
			sound_play(sound_get("chai_clap2"));
			spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
			set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 7);
			set_hitbox_value(AT_JAB, 2, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
			}
			
				if window = 7 && window_timer = 7 && !hitpause
				{
			//	sound_play(sound_get("chai_perfect_beat"));
				sound_play(sound_get("chai_clap3"));
				hit_onBeat = true;
				spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
				set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 7);
				set_hitbox_value(AT_JAB, 3, HG_HIT_SFX,  asset_get("sfx_blow_heavy2"));
				}
		break;
	
	break;
	
	case AT_FTILT:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap1"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
		}

			if window = 4 && window_timer = 4 && !hitpause
			{
		//	sound_play(sound_get("chai_perfect_beat"));
			hit_onBeat = true;
			sound_play(sound_get("chai_clap2"));
			spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
			set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.2);
			set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
			set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
			}

				if window = 7 && window_timer = 7 && !hitpause
				{
			//	sound_play(sound_get("chai_perfect_beat"));
				hit_onBeat = true;
				sound_play(sound_get("chai_clap3"));
				spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
				set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 7);
				set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 1);
				set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 6);
				set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX,  asset_get("sfx_blow_heavy2"));
				}
		break;
	}
	
	case AT_DTILT:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap2"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		
		}
		break;
	}
	
	case AT_UTILT:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap2"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		
		set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.3);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.3);
		}
		break;
	}
	
	case AT_DATTACK:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap1"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 5);
		}
		break;
	}
	
	case AT_NAIR:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap1"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
		}

			if window = 4 && window_timer = 4 && !hitpause
			{
		//	sound_play(sound_get("chai_perfect_beat"));
			sound_play(sound_get("chai_clap2"));
			hit_onBeat = true;
			spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
			set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
			set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
			}

				if window = 7 && window_timer = 7 && !hitpause
				{
			//	sound_play(sound_get("chai_perfect_beat"));
				sound_play(sound_get("chai_clap3"));
				hit_onBeat = true;
				spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
				set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 6);
				set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
				}
		break;
	}
	
	case AT_FAIR:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap2"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
		set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.6);
		}
		break;
	}
	
	case AT_BAIR:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap3"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.4);
		set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy2"));
		}
		break;
	}
	
	case AT_UAIR:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap3"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.4);
		set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy2"));
		}
		break;
	}
	
	case AT_DAIR:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap3"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX,  asset_get("sfx_blow_heavy2"));
		}
		break;
	}
	
	case AT_FSTRONG:
	{
		if state_timer = 1
		{
		attacksfxindex = random_func( 0, 3, true ) ;
		hit_onBeat = false;
		}
		
		if window = 3 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap3"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
	//	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 11);
		set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.4);
		}
		break;
	}
	
	case AT_USTRONG:
	{
		if state_timer = 1
		{
		attacksfxindex = random_func( 0, 3, true ) ;
		hit_onBeat = false;
		}
		
		if window = 3 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap3"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
	//	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
		}
		break;
	}
	
	case AT_DSTRONG:
	{
		if state_timer = 1
		{
		attacksfxindex = random_func( 0, 3, true ) ;
		hit_onBeat = false;
		}
		
		if window = 3 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap3"));
		sound_play(beat_hit_sfx[attacksfxindex],0,0,.4);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		}
		break;
	}
	
	
	case AT_DSPECIAL:
	{
	if state_timer = 1
	{
	attacksfxindex = random_func( 0, 3, true ) ;
	hit_onBeat = false;
	}
	
		if window = 1 && window_timer = 1 && !hitpause
		{
		hit_onBeat = true;
		sound_play(sound_get("chai_clap1"));
		sound_play(beat_hit_sfx[4],0,0,2);
		spawn_hit_fx(x - 70 * spr_dir, y-70, note_effect[0]);
		}
		break;
	}
	
	break;
	}
}