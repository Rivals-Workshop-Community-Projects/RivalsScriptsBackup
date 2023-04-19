//remove sickness from foes if we die
with (asset_get("oPlayer")) {
    if (malsick && sickOwner == other) {
        malsick = false;
		sickTimer = 0;
    }
}

if get_player_color(player) == 8 {
	sound_play(sound_get("death_mad"));
}

//remove all our smokes
for(var i=0; i<array_length(smokeList); i++)
{
	var s = smokeList[i];
	if(s.myLife > s.shrinkTime)
	{
		s.myLife = s.shrinkTime;
	}
}

//reset our own values
malsick = false;
sickOwner = noone;//who made this foe sick. dont touch
sickGrace = 0;//dont touch
sickTimer = 0;//dont touch
sickAfterGrace = 5;//buffer value, change if needed