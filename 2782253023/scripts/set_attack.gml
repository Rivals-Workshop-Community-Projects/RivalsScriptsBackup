if (attack == AT_NSPECIAL){
	if(!free){
	attack = AT_NSPECIAL;
	}else{
	attack = AT_NSPECIAL_2;
	}
}

if (free == true && attack == AT_DSPECIAL)
{
    attack = AT_DSPECIAL_2;
}

if (free == true && attack == AT_FSPECIAL)
{
    attack = AT_FSPECIAL_2;
}

if(super_gauge == gauge_cap && attack == AT_DSTRONG) {
    attack = AT_DSTRONG_2;
}

if(super_gauge == gauge_cap && attack == AT_FSTRONG) {
    attack = AT_FSTRONG_2;
}

if(super_gauge == gauge_cap && attack == AT_USTRONG) {
    attack = AT_USTRONG_2;
}

if(super_gauge == gauge_cap && bustercharge >= 110 && attack == AT_NSPECIAL) {
    attack = AT_EXTRA_1;
}