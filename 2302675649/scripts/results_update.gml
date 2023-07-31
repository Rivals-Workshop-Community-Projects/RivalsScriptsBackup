if ("hue" in self)
{
	hue+=3;
	hue%=255;
}

winner_name = (get_synced_var(player)?"Mio":"Lonin") + " wins!";
if (gpu_get_alphatestfunc()) winner_name = "Void Dragon " + winner_name;