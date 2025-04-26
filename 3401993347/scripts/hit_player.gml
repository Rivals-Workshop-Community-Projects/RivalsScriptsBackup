if(hit_player_obj.player != player && my_hitboxID.type != 2){
	if(shadowBallCharge < shadowBallChargeMax - my_hitboxID.damage*attackChargeMult){
		shadowBallCharge += my_hitboxID.damage*attackChargeMult;
		recentShadowBallChange = my_hitboxID.damage*attackChargeMult;
		recentShadowBallChangeTimer = 20;
	} else {
		oldShadowBallCharge = shadowBallCharge;
		shadowBallCharge = shadowBallChargeMax;
		recentShadowBallChange = shadowBallChargeMax - oldShadowBallCharge;
		recentShadowBallChangeTimer = 20;
	}
}



// if (my_hitboxID.type == 1) {
// 	for (var i = 0; i < array_length(mewtwoOrbStacks); i++) {
// 		var stack = mewtwoOrbStacks[i];
// 		if (!instance_exists(stack)) {
// 			mewtwoOrbStacks = array_cut(mewtwoOrbStacks, i);
// 			continue;
// 		}
// 		var time_end = (stack.length - 1) - (i * 3);
// 		if (stack.hitbox_timer >= time_end - orb_warning_frames) continue;
// 		stack.hitbox_timer -= 5;
		
// 	}
// }

switch (my_hitboxID.attack){
	case AT_USTRONG:
	{
		hit_player_obj.free = true;

		if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
			sound_stop(sound_get("ustrongmiss"))
			sound_stop(sound_get("ustrong"))
			sound_play(sound_get("ustrong"));
		}
		
		//make the move kill at a consistent percent by making how high they are fixed
		if(my_hitboxID.hbox_num == 7 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
			hit_player_obj.y=y-90+hit_player_obj.char_height/2;
		}

		break;
	}
	case AT_JAB:
	{
		if(my_hitboxID.hbox_num == 5 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
			if(hit_player_obj.y < y-10){
				hit_player_obj.y+=0;
			}
			hit_player_obj.free = true;
		}

		break;
	}
	case AT_DSTRONG:
	{
		// if(my_hitboxID.hbox_num == 1 && hit_player_obj.x > x+10){
		// 	hit_player_obj.x=x+10;
		// }
		// if(my_hitboxID.hbox_num == 1 && hit_player_obj.x < x+10){
		// 	hit_player_obj.x=10;
		// }
		break;
	}
	case AT_NAIR:
	{
		if(down_down){
			myFall = true;
		}
		// print(string(PS_HITSTUN) + "htisth");
		// print(string(hit_player_obj.state) + "waa");

		if(my_hitboxID.hbox_num < 6 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
			//get angle from my pos and enemy pos
			var targetx = x+hNairDrag*nairDragHsp;
			var targety = y+vNairDrag*nairDragVsp-aboveNairDragOffset;
			var angle = point_direction(targetx, targety-char_height/2, hit_player_obj.x, hit_player_obj.y-hit_player_obj.char_height/2) + 180;
			hit_player_obj.old_hsp = lengthdir_x(hit_player_obj.orig_knock, angle);
			hit_player_obj.old_vsp = lengthdir_y(hit_player_obj.orig_knock, angle);
			hit_player_obj.should_make_shockwave = false;
			// hit_player_obj.free = true;


			//more succ if they are further
			var dist = point_distance(x, y-char_height/2, hit_player_obj.x, hit_player_obj.y-hit_player_obj.char_height/2);
			var succamount = dist/68;
			if(succamount > 12){
				succamount = 12;
			}

			var anglesucc = point_direction(x, y, hit_player_obj.x, hit_player_obj.y) + 180;
			hit_player_obj.x += lengthdir_x(succamount, anglesucc);
			hit_player_obj.y += lengthdir_y(succamount, anglesucc);

			//pull up more to counteract gravity
			var pullup = (y -char_height/2) - (hit_player_obj.y-hit_player_obj.char_height/2);
			if(pullup < 0){
				hit_player_obj.y+=pullup/3;
			}
		}
		break;
	}
}
if((my_hitboxID.attack == AT_FSPECIAL || (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2) && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)))
{
	if((my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5) && hit_player_obj.lastHitPurpled){
		hit_player_obj.deathMark = true;
	}

	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6) {
		var orbsToAdd = 2;
		var aboutToExplodeTimer = 0;
		if (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6){
			orbsToAdd = array_length(trapOrbStacks);
			//detect if the orbs were about to explode
			
			if (orbsToAdd > 0) {
				//get the index of the orb that is closest to exploding
				var closestIndex = -1;

				for (var i = 0; i < array_length(trapOrbStacks); i++) {

					var stack = trapOrbStacks[i];

					if (!instance_exists(stack)) {
						trapOrbStacks = array_cut(trapOrbStacks, i);
						continue;
					}
					var time_end = (stack.length - 1) - (i * 3);

					if (stack.hitbox_timer <= time_end - orb_warning_frames) continue;
					if(closestIndex == -1){
						closestIndex = i;
						continue;
					}
					if (stack.hitbox_timer > trapOrbStacks[closestIndex].hitbox_timer) {
						closestIndex = i;
					}
				}
					// print("orbs to add: " + string(orbsToAdd));
					// print("trapOrbStacks[0].hitbox_timer:" + string(trapOrbStacks[0].hitbox_timer));
					// print("closestIndex " + string(closestIndex));

				if(closestIndex != -1){

					//the orbs were about to explode, record the closest timer
					aboutToExplodeTimer = trapOrbStacks[closestIndex].hitbox_timer;
				}
			}

			//clear exising trap orbs
			for (var i = 0; i < array_length(trapOrbStacks); i++) {
				var stack = trapOrbStacks[i];
				with (stack) {
					instance_destroy(id);
					continue;
				}
			}
			trapOrbStacks = [];
		} 

		if(my_hitboxID.attack == AT_NSPECIAL){
			orbsToAdd = 0;
			with my_hitboxID
			{
				if ("shadowBallOrbStacks" in self){
					orbsToAdd = array_length(shadowBallOrbStacks)
					for (var i = 0; i < array_length(shadowBallOrbStacks); i++) {
						var stack = shadowBallOrbStacks[i];
						with (stack) {
							instance_destroy(id);
							continue;
						}
					}
					shadowBallOrbStacks = []
				}
			}
			
		}

		if(orbsToAdd != 0){
			var maxStacks = max(maxOrbsStacks, orbsToAdd);
			if(aboutToExplodeTimer != 0){
				var maxStacks = 999;
			}
			hit_player_obj.mewtwoOrbId = id; //claim this target

			repeat(orbsToAdd) {
				if (array_length(hit_player_obj.mewtwoOrbStacks) < maxStacks) {
					var hbox = create_hitbox(AT_FSPECIAL, 3, 0, 0);
					hbox.player = my_hitboxID.player;
					hbox.can_hit[hit_player_obj.player] = false;
					hbox.can_hit[player] = false;
					hit_player_obj.mewtwoOrbStacks = array_push(hit_player_obj.mewtwoOrbStacks, hbox);
					if(aboutToExplodeTimer != 0){
						hbox.hitbox_timer = aboutToExplodeTimer;
					}
				}
			}
			for (var i = 0; i < array_length(hit_player_obj.mewtwoOrbStacks); i++) {
				var stack = hit_player_obj.mewtwoOrbStacks[i];
				if (!instance_exists(stack)) {
					other.mewtwoOrbStacks = array_cut(other.mewtwoOrbStacks, i);
					continue;
				}
				var time_end = (stack.length - 1) - (i * 3);
				if (stack.hitbox_timer >= time_end - 30) continue;
				stack.hitbox_timer = 0;
			}
		}
	}

	//clear trap hitboxes
	if (my_hitboxID.hbox_num == 5) {
		with (trapboxCollectable) {
			instance_destroy(id);
		}
	}
	if(my_hitboxID.hbox_num == 6){
		with (trapbox) {
			instance_destroy(id);
		}
		//got collectable cancel uspecial
		// if(attack == AT_USPECIAL && (state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND)){
		// 	//cancel attack
		// 	vsp = 0;
		// 	if(free){
		// 		state = PS_IDLE_AIR;
		// 		vsp = -4;
		// 	} else {
		// 		state = PS_IDLE;
		// 	}
		// 	hsp = 0;
		// 	old_hsp = 0;
		// 	old_vsp = 0;
		// }
	}
}

num = my_hitboxID.hbox_num;

//7axel7's stun duration weight fix
switch(my_hitboxID.attack)
{
    case AT_FSPECIAL:
	
    //predict hitstun frames
    BKB = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_BASE_KNOCKBACK);
    KBS = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_KNOCKBACK_SCALING);
    HMult = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITSTUN_MULTIPLIER);
    weight = hit_player_obj.knockback_adj;
    damage = get_player_damage( hit_player_obj.player );

    if(HMult == 0){
        HMult = 1;
    }

    enemy_flinch_knockback_adj = 1.00;

    prediction = (BKB*4*((weight - 1)*0.6+1)+damage*0.12*KBS*4*0.65*weight)*HMult;

    desired = (BKB*4*((enemy_flinch_knockback_adj - 1)*0.6+1)+damage*0.12*KBS*4*0.65*weight)*HMult;

    //uncomment to see old and desired values
    // print("old: " + string(prediction) + " new: " + string(desired));

    //calculate how long they should be stunned for given new adj
    stunMult = desired/prediction;

    //set the state timer to the new stun time
    stuntime = 12 - hit_player_obj.state_timer;
    stuntime*=stunMult;
    hit_player_obj.state_timer = 12-stuntime;
}

// anthem array cut code
#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;