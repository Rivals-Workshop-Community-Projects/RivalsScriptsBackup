//got_hit.gml

move_cooldown[AT_USPECIAL] = 0;
if (sprite_index == sprite_get("uspecial") && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
	attack = 0;
	sound_stop(sfx_smash_ult_snake_uspec_2);
	dontSpawnUSpecWJvfx = true;
}

// dropping property if hit out of throwing property anim
if (sprite_index == sprite_get("fspecial_deed") && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
	createProperty(fspec_grabbed_property, 3, fspec_grabbed_property_housesNum);
	fspec_grabbed_property = 0;
	touchingAnyPropFSpec = false;
	fspec_grabbed_property_housesNum = 0;
}

//--------------------------------------------

// Creating Property Function

#define createProperty(propertyNumber, thrown, houses)

var XSpawnCoords = x+0*spr_dir;
var YSpawnCoords = y - 4;

var hitThrownVSP = -10;

if (propertyNumber == 1){
	property1 = instance_create(XSpawnCoords, YSpawnCoords, "obj_article1");
	property1.propertyNumber = 1;
	property1.numberOfHouses = houses;
	property1.decayTimer = 900;
	if (property1HouseStartRune){
		property1.numberOfHouses += 1;
	}
	if (thrown == 0 || thrown == 2){
		property1.vsp = 12;
	} else if (thrown == 1){
		if (((left_down || up_down) && !(right_down || down_down) && spr_dir == 1) || (!(left_down || down_down) && (right_down || up_down) && spr_dir == -1)){
			property1.vsp = -18;
			property1.hsp = 0 * spr_dir;
		} else if ((!(left_down || up_down) && (right_down || down_down) && spr_dir == 1) || ((left_down || down_down) && !(right_down || up_down) && spr_dir == -1)){
			property1.vsp = -10;
			property1.hsp = 8 * spr_dir;
		} if (!left_down && !right_down & !up_down && !down_down){
			property1.vsp = -14;
			property1.hsp = 4 * spr_dir;
		}
	} else if (thrown == 3){
		property1.vsp = hitThrownVSP;
		property1.hsp = 0 * spr_dir;
	}
} else if (propertyNumber == 2){
	property2 = instance_create(XSpawnCoords, YSpawnCoords, "obj_article1"); 
	property2.propertyNumber = 2;
	property2.numberOfHouses = houses;
	property2.decayTimer = 900;
	if (property1HouseStartRune){
		property2.numberOfHouses += 1;
	}
	if (thrown == 0 || thrown == 2){
		property2.vsp = 12;
	} else if (thrown == 1){
		if (((left_down || up_down) && !(right_down || down_down) && spr_dir == 1) || (!(left_down || down_down) && (right_down || up_down) && spr_dir == -1)){
			property2.vsp = -18;
			property2.hsp = 0 * spr_dir;
		} else if ((!(left_down || up_down) && (right_down || down_down) && spr_dir == 1) || ((left_down || down_down) && !(right_down || up_down) && spr_dir == -1)){
			property2.vsp = -10;
			property2.hsp = 8 * spr_dir;
		} if (!left_down && !right_down & !up_down && !down_down){
			property2.vsp = -14;
			property2.hsp = 4 * spr_dir;
		}
	} else if (thrown == 3){
		property2.vsp = hitThrownVSP;
		property2.hsp = 0 * spr_dir;
	}
} else if (propertyNumber == 3){
	property3 = instance_create(XSpawnCoords, YSpawnCoords, "obj_article1"); 
	property3.propertyNumber = 3;
	property3.numberOfHouses = houses;
	property3.decayTimer = 900;
	if (property1HouseStartRune){
		property3.numberOfHouses += 1;
	}
	if (thrown == 0 || thrown == 2){
		property3.vsp = 12;
	} else if (thrown == 1){
		if (((left_down || up_down) && !(right_down || down_down) && spr_dir == 1) || (!(left_down || down_down) && (right_down || up_down) && spr_dir == -1)){
			property3.vsp = -18;
			property3.hsp = 0 * spr_dir;
		} else if ((!(left_down || up_down) && (right_down || down_down) && spr_dir == 1) || ((left_down || down_down) && !(right_down || up_down) && spr_dir == -1)){
			property3.vsp = -10;
			property3.hsp = 8 * spr_dir;
		} if (!left_down && !right_down & !up_down && !down_down){
			property3.vsp = -14;
			property3.hsp = 4 * spr_dir;
		}
	} else if (thrown == 3){
		property3.vsp = hitThrownVSP;
		property3.hsp = 0 * spr_dir;
	}
}

if (thrown == 0){
	currCash -= propertyBuildCashRequired;
}
//--------------------------------------------