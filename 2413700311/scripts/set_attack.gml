//update


//--------------------------------------------------------------------
//頭状態
if (attack == AT_DATTACK && bodyless == true)
{
	attack = AT_EXTRA_1;
	set_attack(AT_EXTRA_1);
}

if (attack == AT_FTILT && bodyless == true)
{
	attack = AT_FTHROW;
	set_attack(AT_FTHROW);
}

if (bodyless == true)
{
	if(attack == AT_NAIR){//or(attack == AT_BAIR)or(attack == AT_FAIR)or(attack == AT_DAIR)or(attack == AT_UAIR){
		attack = AT_NTHROW;
		set_attack(AT_NTHROW);
	}
	
	if((attack == AT_BAIR) or (attack == AT_FAIR)){
		if(attack == AT_BAIR) spr_dir = spr_dir * -1;
		attack = AT_FSTRONG_2;
		set_attack(AT_FSTRONG_2);
	}
	if(attack == AT_DAIR){
		attack = AT_DSTRONG_2;
		set_attack(AT_DSTRONG_2);
	}
	if(attack == AT_UAIR){
		attack = AT_USTRONG_2;
		set_attack(AT_USTRONG_2);
	}
}

if (attack == AT_JAB && bodyless == true)
{
	attack = AT_FTHROW;
	set_attack(AT_FTHROW);
}

if (attack == AT_FSTRONG && bodyless == true)
{
	attack = AT_FSTRONG_2;
	set_attack(AT_FSTRONG_2);
}


if (attack == AT_USTRONG && bodyless == true)
{
	attack = AT_USTRONG_2;
	set_attack(AT_USTRONG_2);
}

if (attack == AT_DSTRONG && bodyless == true)
{
	attack = AT_DSTRONG_2;
	set_attack(AT_DSTRONG_2);
}


if (attack == AT_USPECIAL && bodyless == true)
{
	attack = AT_USPECIAL_2;
	set_attack(AT_USPECIAL_2);
}

if (attack == AT_FSPECIAL && bodyless == true && bodyloss == false)
{
	attack = AT_FSPECIAL_2;
	set_attack(AT_FSPECIAL_2);
}

if (attack == AT_DSPECIAL && bodyless == true)
{
	attack = AT_DSPECIAL_2;
	set_attack(AT_DSPECIAL_2);
}

if (attack == AT_NSPECIAL && bodyless == true)
{
	attack = AT_NSPECIAL_2;
	set_attack(AT_NSPECIAL_2);
}

//--------------------------------------------------------------------

if (attack == AT_DSPECIAL && free)
{
	attack = AT_DSPECIAL_AIR;
	set_attack(AT_DSPECIAL_AIR);
}

//--------------------------------------------------------------------



