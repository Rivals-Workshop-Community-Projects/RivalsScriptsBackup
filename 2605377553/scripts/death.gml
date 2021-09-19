//remove sickness from foes if we die
with (asset_get("oPlayer")) {
    if (malsick && sickOwner == other) {
        malsick = false;
		sickTimer = 0;
    }
}

//remove all our smokes
with(obj_article1)
{
	if(player_id == other && type == 0 && myLife > shrinkTime)
	{
		myLife = shrinkTime;
	}
}

//reset our own values
malsick = false;
sickOwner = noone;//who made this foe sick. dont touch
sickGrace = 0;//dont touch
sickTimer = 0;//dont touch
sickAfterGrace = 5;//buffer value, change if needed