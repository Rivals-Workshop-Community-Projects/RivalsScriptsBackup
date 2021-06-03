var destroyed = false;//Clone use

//auto-recharge
//also handles point clamping
if PotionHeldDown
{
    if special_down
    {
        barPoints += barRecharge;
		
		//Blinking
		var p = get_player_color( player );
		var d = -100;
		var c = floor(get_gameplay_time()/10)%2 == 0 ? [0,0,0]
		: [get_color_profile_slot_r( p, 3)+d,get_color_profile_slot_g( p, 3)+d,get_color_profile_slot_b( p, 3)+d];
		outline_color = c;
		init_shader();
    }
    else
    {
        if ((state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL ||
        state == PS_WALK_TURN || state == PS_DASH ||state == PS_DASH_STOP || state == PS_WAVELAND)
        || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL))
        {
            if PotionCooldown == 0
            {
                set_attack(AT_NSPECIAL);
                window = 2;
            }
        }
        else
        {
            barPoints-= 50;
        }
        PotionHeldDown = false;
    }
}
else
{
	outline_color = [0, 0, 0];
	init_shader();
}
PotionCooldown--;
PotionCooldown = clamp(PotionCooldown, 0, 18)
barPoints = clamp(barPoints,0,barAmount*barNumber);

//print_debug(string(window) + " : " + string(window_timer));

//Upkeep potions
var tempArr = array_create(0);
for(var i=0; i<array_length(myPotion); i++)
{
	if(instance_exists(myPotion[i]))
		array_push(tempArr,myPotion[i]);
	else
		print_debug("Removed Potion: " + string(myPotion[i]));
}
myPotion = array_clone(tempArr);

//draw potion stuff
if(attack == AT_DSPECIAL)
{	
	if window == 3
	{
		potionDrawYOffset = ease_circOut( 0, potionDrawYOffsetMax, window_timer, get_window_value( AT_DSPECIAL, 3, AG_WINDOW_LENGTH ));
		hud_offset = 48+potionDrawYOffset;
	}
	else
		potionDrawYOffset = 0;
}

//Allow re-use of uspec if grounded / walljumped
if !free || state == PS_WALL_JUMP
	move_cooldown[AT_USPECIAL] = 0;

//Clone Killer
if custom_clone
{
	//print("Clone Alive");
	if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND
	{
		print("Destroyed Clone");
		destroyed = true;
	}
	else
	{
		if !visible
			makeGooey();
		visible = true;
	}
}

//clay junk below

if !canDraw{
    canDraw = true;
}

if hasstung >= 1
{
	hasstung--;
}

/*state switch, i made it for HUD_OFFSET use, which alters how high teh arrow on top of the character is.
but i can also put other stuff here who knows*/
switch (state)
{
    case PS_WALK:
    {
        hud_offset = 5;
    }break;
    case PS_PARRY:
    {
        hud_offset = 10;
    }break;
}

if destroyed
	instance_destroy();

hit_fx_depth(sting,-4)
hit_fx_depth(splsh,-5)


#define makeGooey()
{
	//print("Gooey-ing Player");
	var slot = get_player_color( player );
	print("Color Slot: " + string(slot));
	
	var r = get_color_profile_slot_r( slot, 3);
	var g = get_color_profile_slot_g( slot, 3);
	var b = get_color_profile_slot_b( slot, 3);

	for(var i=0; i<8; i++)
	{
		var old_r = get_color_profile_slot_r( slot, i);
		print("old r: " + string(old_r) + " -> new r: " + string(r));
		set_character_color_slot( i, r, g, b , 0); //Hat Green
	}
	
	init_shader();
}

#define hit_fx_depth()
{
    with (hit_fx_obj) if (argument[0] == hit_fx && player_id == other.id)
	{
		if depth != argument[1]{depth = argument[1];}
	}
}