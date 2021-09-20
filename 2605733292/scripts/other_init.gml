//other_init.gml

is_in_playtest = (object_index == oTestPlayer)

if (is_in_playtest == false){
	
	hey_person_who_just_got_hit_by_burst_bubble_with_star_fall_asleep_please = false;
	
	NotSleepKirby_IsSleeping = false
	NotSleepKirby_SleepTimer = 0
	NotSleepKirby_SleepTimerRelease = get_player_damage( player )
	NotSleepKirby_Sleep_Hat_Flash = false
	NotSleepKirby_hat_timer = 0
	NotSleepKirby_hat_timer2 = 0
	NotSleepKirbyX = x
	NotSleepKirbyY = y
	NotSleepKirbyCurrencyForMario = 0
	NotSleepKirby_SleepTick = 0
	NotSleepKirby_SleepHit = 0
	NotSleepKirby_WasHitBySleepRune = false
	NotSleepKirby_FspecialImmunity = 0

	NotSleepKirbyID = id

		//SleepKirby_enemy_hat = oPlayer.SleepKirby_enemy_hat
		//SleepKirby_enemy_hat_otherdir = oPlayer.SleepKirby_enemy_hat_otherdir

	blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

		//IsSleepKirby_enemy_hat = oPlayer.IsSleepKirby_enemy_hat
		//IsSleepKirby_enemy_hat_otherdir = oPlayer.IsSleepKirby_enemy_hat_otherdir
		//sfx_ability_star_break = sound_get("sfx_ability_star_break");
		//sfx_ability_star_break = oPlayer.sfx_ability_star_break

	SleepKirby_enemy_sleep_bar = sprite_get("fspecial_enemy_sleep_bar");
}