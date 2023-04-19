// code for kamehameha

if ((attack == AT_NSPECIAL || attack == AT_NTHROW || attack == AT_NSPECIAL_2) && !ptooie.ptCheck) {
	ptooie.vsp = -2;
	ptooie.ptCheck = true;
	ptooie.thrown = true;
}