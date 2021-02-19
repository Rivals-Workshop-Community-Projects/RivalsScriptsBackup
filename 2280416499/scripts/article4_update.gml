if exist_timer == 1{
	vsp = -5;
}

else{
	vsp += (vsp < -1) ? 0.3 : 0.1;
}

vsp = min(vsp, 0);

if exist_timer > 120 || target.state_cat != SC_HITSTUN{
	instance_destroy();
	exit;
}

var remaining = target.hitstun - target.state_timer;

visible = !(remaining - 1 < 12 && (remaining - 1) % 6 >= 3)

exist_timer++;