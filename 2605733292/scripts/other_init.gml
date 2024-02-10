//other_init.gml

is_in_playtest = (object_index == oTestPlayer)

//if (is_in_playtest == false){
	
	damageToWakeUp = 0;
	damageIncrementTick = 0;
	isCurrSleeping = false;
	sleepingTimer = 0;
	hitBySleepingAttack = false;
	sleepID = noone;
	sleepHatSpr = noone;
	sleepHatImageTimer = 0;
	sleepHatImageTimer2 = 0;
	shouldWakeUp = false;
	shouldBounceUpFromBlastzone = false;
	sleepHatShouldFlash = false;
	sleepFXspr = noone;
	sleepVFX = noone;
	
	blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
	
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
		
//}