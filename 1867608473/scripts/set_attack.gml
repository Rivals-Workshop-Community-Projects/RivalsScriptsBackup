//set_attack

/*if (attack == AT_FAIR) { disabled for balance
    if (window == 1 && window_timer == 1) {
        reset_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH);
    }
}*/

// Devilsknife Cost
if (attack == AT_NSPECIAL && tp_gauge < devilsknife_cost && !phone_cheats[cheat_freespecials]){
	attack = AT_EXTRA_2;
}
else if (attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] == 0 && tp_gauge >= devilsknife_cost){
	reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
	tp_gauge -= devilsknife_cost;
}

// Rude Buster Cost
if (attack == AT_FSPECIAL && tp_gauge >= 65 && move_cooldown[AT_FSPECIAL_2] == 0){
	attack = AT_FSPECIAL_2;
	tp_gauge -= red_buster_cost;
}

if (attack == AT_FSPECIAL && tp_gauge < rude_buster_cost && !phone_cheats[cheat_freespecials]){
	attack = AT_EXTRA_1;
}
else if (attack == AT_FSPECIAL && tp_gauge >= rude_buster_cost && move_cooldown[AT_FSPECIAL] == 0){
	reset_num_hitboxes(AT_FSPECIAL);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH,18);
	tp_gauge -= rude_buster_cost;
}


// Courage Activation
if (attack == AT_DSPECIAL && supersaiyan == 1){
	attack = AT_DSPECIAL_2;
}

if (tp_gauge == 0 && attack == AT_DSPECIAL){
    set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 0);
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 5);
    set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 0);
}
else if (tp_gauge >= 1 && attack == AT_DSPECIAL){
	reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, );
    reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
}

//DAMAGE BUFF CODE (potentially up to be disabled)
// store the number of hitboxes for the attack being used in a variable
var numhitboxes = get_num_hitboxes(attack);
// if downb buff is active, check what attack is being used. if it is in the list, use the custom damage offset. otherwise, change all of its hitboxes to have damage modifier attackmod. reset the value each time so that attackmod is not constantly incremented
if (supersaiyan == 1) {
    var attackmod = 0;
    if (attack == AT_DAIR) {set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);}
    else if (attack == AT_UAIR) {set_hitbox_value(attack, 2, HG_DAMAGE, 9);}

    else {
        for (var i = 1; i <= numhitboxes; i++) {
            reset_hitbox_value(attack, i, HG_DAMAGE);
            attackmod = 3;
            var attackdamage = get_hitbox_value(attack, i, HG_DAMAGE);
            set_hitbox_value(attack, i, HG_DAMAGE, attackdamage + attackmod);
        }
    }
}
// if downb is inactive, remove all damage modifiers
if (supersaiyan == 0) {
    for (var i = 1; i <= numhitboxes; i++) {
        reset_hitbox_value(attack, i, HG_DAMAGE);
    }
}

if (!runeH){
	switch(attack) {
		case AT_DSTRONG:
		MakeAssistSprite(1)
		break
		case AT_USTRONG:
		case AT_FSPECIAL:
		case AT_FSPECIAL_2:
		MakeAssistSprite(0)
		break
		case AT_NSPECIAL:
		MakeAssistSprite(2)
		break
		case AT_TAUNT:
		MakeAssistSprite(3)
	}
} else {
	switch(attack){
		case AT_DSTRONG:
		MakeAssistSprite(1)
		break
		case AT_FSPECIAL:
		case AT_FSPECIAL_2:
		MakeAssistSprite(0)
		break
		case AT_NSPECIAL:
		MakeAssistSprite(2)
		break
		case AT_TAUNT:
		MakeAssistSprite(3)
	}
}

#define MakeAssistSprite(n)
ExtraColGroup = n
init_shader()
instance_create(x, y, "obj_article3")