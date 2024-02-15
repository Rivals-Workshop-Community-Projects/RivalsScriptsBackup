//death.gml

//sound_stop(asset_get("sfx_death1"));
//sound_stop(asset_get("sfx_death2"));
sound_play(sfx_death);

if (burst_bubble_is_charged == true){
	burst_bubble_is_charged = false;
	sound_play(sfx_canvas_curse_balloon_pop);
}

if (get_player_stocks( player ) == 1) {
	if (get_player_color( player ) == 7){
		sound_play(sfx_death_laststock_gb);
	} else {
		sound_play(sfx_death_laststock);
	}
}

if (isCurrSleeping){
	isCurrSleeping = false;
	shouldWakeUp = true;
}

/*
NotSleepKirby_IsSleeping = false
NotSleepKirby_SleepTimer = 0
NotSleepKirby_SleepTimerRelease = get_player_damage( player )
NotSleepKirby_hat_timer = 0
NotSleepKirby_hat_timer2 = 0
NotSleepKirbyX = x
NotSleepKirbyY = y
NotSleepKirbyCurrencyForMario = 0
NotSleepKirby_SleepTick = 0
NotSleepKirby_SleepHit = 0
NotSleepKirby_WasHitBySleepRune = false
*/