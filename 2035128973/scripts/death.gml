if (get_synced_var(player) == 15005) exit;
asCharge = 0;
spr_dir = 1;

if ("killCard" not in hit_player_obj)
{
	killCard.timer = 120;
	killCard.attackPlayer = hit_player_obj;
	killCard.deadPlayer = self;
}