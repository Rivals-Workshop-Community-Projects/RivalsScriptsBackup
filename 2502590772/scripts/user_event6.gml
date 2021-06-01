//user_event6.gml

//minun's reskin init.

//ignore this for plusle
if (species_id == 0) return;
//for minun, add the acronym
var acronym = "m_";

/*
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(acronym + "nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get(acronym + "nspecial_2"));
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get(acronym + "fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get(acronym + "fspecial_2"));
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get(acronym + "dspecial"));
*/
//set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get(acronym + "dspecial_2"));
//set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(acronym + "uspecial"));
//set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get(acronym + "uspecial_2"));

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get(acronym + "taunt"));

//for all attacks, add 6 to the hitbox group.
var i = 0;
repeat (50) {
	n = 1;
	repeat (get_num_hitboxes(i)) {
		var new_hb_group = get_hitbox_value(i, n, HG_HITBOX_GROUP) + 4;
		set_hitbox_value(i, n, HG_HITBOX_GROUP, new_hb_group);
		n++;
	}
	i++;
}



spr_minun_reskin = array_create(50, sprite_get(acronym + "idle"));

spr_minun_reskin[PS_WALK] =             sprite_get(acronym + "walk");
spr_minun_reskin[PS_WALK_TURN] =        sprite_get(acronym + "walkturn");
spr_minun_reskin[PS_DASH_START] =       sprite_get(acronym + "dashstart");
spr_minun_reskin[PS_DASH] =             sprite_get(acronym + "dash");
spr_minun_reskin[PS_DASH_STOP] =        sprite_get(acronym + "dashstop");
spr_minun_reskin[PS_DASH_TURN] =        sprite_get(acronym + "dashturn");
spr_minun_reskin[PS_WAVELAND] =         sprite_get(acronym + "waveland");

spr_minun_reskin[PS_AIR_DODGE] =        sprite_get(acronym + "airdodge");
spr_minun_reskin[PS_PARRY_START] =      sprite_get(acronym + "parry");
spr_minun_reskin[PS_PARRY] =            sprite_get(acronym + "parry");
spr_minun_reskin[PS_ROLL_BACKWARD] =    sprite_get(acronym + "roll_backward");
spr_minun_reskin[PS_ROLL_FORWARD] =     sprite_get(acronym + "roll_forward");
spr_minun_reskin[PS_TECH_GROUND] =      sprite_get(acronym + "tech");
spr_minun_reskin[PS_TECH_BACKWARD] =    sprite_get(acronym + "roll_backward");
spr_minun_reskin[PS_TECH_FORWARD] =     sprite_get(acronym + "roll_forward");
spr_minun_reskin[PS_WALL_TECH] =        sprite_get(acronym + "walljump");

spr_minun_reskin[PS_WRAPPED] =          sprite_get(acronym + "hurt");
spr_minun_reskin[PS_FROZEN] =           sprite_get(acronym + "hurt");
spr_minun_reskin[PS_IDLE] =             sprite_get(acronym + "idle");
spr_minun_reskin[PS_IDLE_AIR] =         sprite_get(acronym + "jump");
spr_minun_reskin[PS_CROUCH] =           sprite_get(acronym + "crouch");
spr_minun_reskin[PS_JUMPSQUAT] =        sprite_get(acronym + "jumpstart");
spr_minun_reskin[PS_FIRST_JUMP] =       sprite_get(acronym + "jump");
spr_minun_reskin[PS_DOUBLE_JUMP] =      sprite_get(acronym + "doublejump");
spr_minun_reskin[PS_WALL_JUMP] =        sprite_get(acronym + "walljump");
spr_minun_reskin[PS_LAND] =             sprite_get(acronym + "land");
spr_minun_reskin[PS_LANDING_LAG] =      sprite_get(acronym + "landinglag");

spr_minun_reskin[PS_HITSTUN] =          sprite_get(acronym + "hurt");
spr_minun_reskin[PS_HITSTUN_LAND] =     sprite_get(acronym + "hurtground");
spr_minun_reskin[PS_TUMBLE] =           sprite_get(acronym + "tumble");
spr_minun_reskin[PS_PRATFALL] =         sprite_get(acronym + "pratfall");
spr_minun_reskin[PS_PRATLAND] =         sprite_get(acronym + "landinglag");

spr_minun_reskin[PS_SPAWN] =            sprite_get(acronym + "idle");
spr_minun_reskin[PS_RESPAWN] =          sprite_get(acronym + "idle");
spr_minun_reskin[PS_DEAD] =             sprite_get(acronym + "idle");

ds_list_original_hurt_sprites = ds_list_create();
ds_list_add(ds_list_original_hurt_sprites,
    sprite_get("hurt"),
    sprite_get("bighurt"),
    sprite_get("hurtground"),
    sprite_get("bouncehurt"),
    sprite_get("spinhurt"),
    sprite_get("uphurt"),
    sprite_get("downhurt")
);

spr_minun_reskin_hurt[0] = sprite_get(acronym + "hurt");
spr_minun_reskin_hurt[1] = sprite_get(acronym + "bighurt");
spr_minun_reskin_hurt[2] = sprite_get(acronym + "hurtground");
spr_minun_reskin_hurt[3] = sprite_get(acronym + "bouncehurt");
spr_minun_reskin_hurt[4] = sprite_get(acronym + "spinhurt");
spr_minun_reskin_hurt[5] = sprite_get(acronym + "uphurt");
spr_minun_reskin_hurt[6] = sprite_get(acronym + "downhurt");




