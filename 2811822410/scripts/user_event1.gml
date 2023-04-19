//CSS Stuff
//Movement/Idle Based
sprite_change_offset("idle", 162, 192);
sprite_change_offset("idle_hurt", 162, 192);
sprite_change_offset("crouch", 162, 192);
sprite_change_offset("dspecial", 162, 192);

//Jump and Land
sprite_change_offset("jump", 162, 192);
sprite_change_offset("jumpstart", 162, 192);
sprite_change_offset("doublejump", 162, 192);
sprite_change_offset("walljump", 162, 192);

sprite_change_offset("land",  162, 192);
sprite_change_offset("landinglag",  162, 192);
sprite_change_offset("pratfall", 162, 192);
sprite_change_offset("pratland",  162, 192);
sprite_change_offset("waveland", 162, 192);
sprite_change_offset("tech", 162, 192);

//Walk and Run
sprite_change_offset("walk", 162, 192);
sprite_change_offset("walkturn", 162, 192);

sprite_change_offset("dash", 172, 192);
sprite_change_offset("dash_hurt", 162, 192);
sprite_change_offset("dashstart", 162, 192);
sprite_change_offset("dashstop", 162, 192);
sprite_change_offset("dashturn", 162, 192);

//Other
sprite_change_offset("plat", 162, 192);
sprite_change_offset("hurt", 162, 192);
sprite_change_offset("bighurt", 162, 192);
sprite_change_offset("hurtground", 162, 192);
sprite_change_offset("bouncehurt", 162, 192);
sprite_change_offset("spinhurt", 162, 192);
sprite_change_offset("uphurt", 162, 192);
sprite_change_offset("downhurt", 162, 192);
sprite_change_offset("airdodge", 162, 192);
sprite_change_offset("parry", 162, 192);
sprite_change_offset("roll_forward", 162, 192);
sprite_change_offset("roll_backward", 162, 192);

//Attack Based
sprite_change_offset("taunt_dance", 162, 192);
sprite_change_offset("taunt_leek", 162, 192);
sprite_change_offset("taunt_juice", 162, 192);

sprite_change_offset("dstrong", 162, 192);
sprite_change_offset("fstrong",  162, 192);
sprite_change_offset("ustrong", 162, 192);

sprite_change_offset("bair", 162, 192);
sprite_change_offset("dair", 162, 192);
sprite_change_offset("uair", 162, 192);
sprite_change_offset("nair", 162, 192);
sprite_change_offset("fair",  162, 192);

sprite_change_offset("utilt", 162, 192);
sprite_change_offset("dtilt",  162, 192);
sprite_change_offset("ftilt", 162, 192);

sprite_change_offset("jab", 162, 192);

sprite_change_offset("dspecial", 162, 192);
sprite_change_offset("dspecial_projector", 160, 192);
sprite_change_offset("nspecial", 162, 192);
sprite_change_offset("nspecial_proj", 159, 169);
sprite_change_offset("uspecial", 162, 192);
sprite_change_offset("fspecial_ground", 162, 192);
sprite_change_offset("fspecial_air", 162, 192);
sprite_change_offset("fspecial_dash", 162, 192);

sprite_change_offset("dattack", 162, 192);

sprite_change_offset("boxCircle", 100, 100);
sprite_change_offset("boxSquare", 100, 100);
sprite_change_offset("boxRound", 100, 100);

/*
curr_attack = -4;

new_hitbox(AT_FAIR, 1, 2)
add_attack_value(curr_attack, AG_SPRITE, sprite_get("fair"));
add_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
add_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
add_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -45);
add_hitbox_value(curr_attack, 1, HG_WIDTH, 70);
add_hitbox_value(curr_attack, 1, HG_HEIGHT, 90);

#define new_hitbox(_atk, _num, _frame) {
	curr_attack = _atk;
	array_insert[_atk, _num, -4, -4, _frame, 0, 0, 0, 0];
}

#define add_hitbox_value(_atk, _num, _index, _val) {
	
}
*/







































