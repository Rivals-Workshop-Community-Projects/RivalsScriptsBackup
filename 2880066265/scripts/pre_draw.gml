//Create the Cacodemon

if(eust_drawCacophony){
	var cacoFrame = floor(eust_cacoTimer / 1.2);
	draw_sprite_ext( sprite_get("dstrong_particle"), -1, x+(10*spr_dir), y-19, (0.8 + eust_cacoTimer*0.05) * (1 + (0.5*has_rune("H"))), (0.8 + eust_cacoTimer*0.05) * (1 + (0.5*has_rune("H"))), 0, c_white, 1 - eust_cacoTimer*0.06 );
}

//And the Locust

if(eust_drawLocust){
	var locoFrame = floor(eust_locoTimer / 1.2);
	draw_sprite_ext( sprite_get("uspecial_particle"), -1, x+(10*spr_dir), y-33, 0.8 + eust_locoTimer*0.05, 0.8 + eust_locoTimer*0.05, 0, c_white, 1 - eust_locoTimer*0.06 );
}

//And the Papers

if(eust_drawPapers){
	var paperFrame = floor(eust_paperTimer / 1.2);
	draw_sprite_ext( sprite_get("dspecial_particles"), eust_paperPage1, 10+(eust_paperX-(paperFrame*eust_paperD)), -40+(eust_paperY-floor((paperFrame*1.2))), 1, 1, 0, c_white, (eust_paperTimer < 50 ? 1 : (eust_paperTimer%10 > 5 ? 1 : 0)));
	draw_sprite_ext( sprite_get("dspecial_particles"), eust_paperPage2, 10+(eust_paperX-floor((paperFrame*1.5*eust_paperD))), -40+(eust_paperY-(paperFrame)), 1, 1, 0, c_white, (eust_paperTimer < 50 ? 1 : (eust_paperTimer%10 > 5 ? 1 : 0)));
}

//Essence of Fear

if(eust_drawFear){
	draw_sprite_ext( sprite_get("nspecial_particle"), (eust_fearParticleTimer > 6 ? 1 : 0), x + (spr_dir*172), y - 52, 1, 1, 0, c_white, eust_fearParticleTimer < 3 ? 1 : (eust_fearParticleTimer < 6 ? 0 : (1.06 - (0.06*eust_fearParticleTimer))));
}


//Chaos Incoming
if(eust_chaosPresent){
	var chaosX = 3 - random_func(1, 6, true);
	var chaosY = 0 - random_func(2, 6, true);
	shader_start()
	draw_sprite_ext( sprite_get("taunt_ballin_omega_afterimage"), -1, x+(6*chaosX), y+(3*chaosY), spr_dir, 1, 0, c_white, 0.60 );
	shader_end()
}


