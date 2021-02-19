//got_hit 

fTrigger = 0;

Meter_Damage = floor((get_player_damage(player)) - Init_Percent);

if (ncharge >= 0 && meterLock < 4){
	ncharge = floor(ncharge - (floor(Meter_Damage / 2)));
}