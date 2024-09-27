silver_bullets += 10;
move_cooldown[AT_DSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSTRONG] = 0;
if (silver_bullets >= 20) silver_bullets = 20;

if (instance_exists(madara)){
    madara.image_index = 9;
	madara.state = 4;
}