if (state_cat == SC_HITSTUN) {
    var meter_gain = 10; // change this to how much you meter you gain back per frame
	uspec_meter = min(uspec_meter+meter_gain,uspec_max);
}