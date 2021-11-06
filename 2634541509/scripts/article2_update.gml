can_be_grounded = true;
through_platforms = false;
ignores_walls = false;
pipis_timer++;
create_hitbox(AT_FTHROW, 1, x, y);

if(anglee < 360){
    anglee++;
    anglee++;
    anglee++;
    anglee++;
    anglee++;
    anglee++;
    anglee++;
    anglee++;
    anglee++;
    anglee++;
}else{
    anglee = 0;
}
if(free){
    image_angle = anglee;
    vsp = 6;
}else{
    image_angle = 0;
    vsp = 0;
}

if(player_id.destroy_pipis == true || pipis_timer == 200){
	sound_play(sound_get("pipis_boom"));
    player_id.pipis_amount = 0;
    create_hitbox(AT_TAUNT_2, 1, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 2, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 3, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 4, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 5, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 6, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 7, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 8, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 9, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 10, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 11, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 12, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 13, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 14, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 15, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 16, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 17, x - 16, y - 12);
	create_hitbox(AT_TAUNT_2, 18, x - 16, y - 12);
	instance_destroy(self);
}
