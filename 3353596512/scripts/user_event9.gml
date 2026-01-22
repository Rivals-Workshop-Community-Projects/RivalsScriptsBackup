//user event 9
//scrap information

/*
    {
        index : 0,
        name : "scrap name",
        value : (sell value),
        size : 0,               //0 = small, 1 = large
        weight : (how much it slows employee down)
        pos : 0 //position it takes on counter
        sfx : noone
    }

*/

available_scrap = [

//small scrap

    {
        index : 0,
        name : "Airhorn",
        value : 80,
        orig_value : 80,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_plastic1")
    },
    
    {
        index : 1,
        name : "Big bolt",
        value : 40,
        orig_value : 40,
        size : 0,
        weight : 19,
        pos : 0,
        sfx : sound_get("scrap_metal1")
    },
    
    {
        index : 2,
        name : "Brass bell",
        value : 80,
        orig_value : 80,
        size : 0,
        weight : 24,
        pos : 0,
        sfx : sound_get("scrap_bell")
    },
    
    {
        index : 3,
        name : "Jar of pickles",
        value : 60,
        orig_value : 60,
        size : 0,
        weight : 16,
        pos : 0,
        sfx : sound_get("scrap_glass1")
    },

    {
        index : 4,
        name : "Magic 7 ball",
        value : 80,
        orig_value : 80,
        size : 0,
        weight : 16,
        pos : 0,
        sfx : sound_get("scrap_ball")
    },
    
    {
        index : 5,
        name : "Plastic fish",
        value : 40,
        orig_value : 40,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_plastic2")
    },

    {
        index : 6,
        name : "Toy robot",
        value : 90,
        orig_value : 90,
        size : 0,
        weight : 21,
        pos : 0,
        sfx : sound_get("scrap_plasticlarge")
    },
    
    {
        index : 7,
        name : "Rubber ducky",
        value : 100,
        orig_value : 100,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_duck")
    },
    
    {
        index : 8,
        name : "Tattered metal sheet",
        value : 20,
        orig_value : 20,
        size : 0,
        weight : 26,
        pos : 0,
        sfx : sound_get("drop_metal_small")
    },
    
    {
        index : 9,
        name : "Teeth",
        value : 80,
        orig_value : 80,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_plastic1")
    },
    
    {
        index : 10,
        name : "Whoopee cushion",
        value : 40,
        orig_value : 40,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_cardboard")
    },
    
//large scrap
    
    {
        index : 11,
        name : "Apparatus",
        value : 80,
        orig_value : 80,
        size : 1,
        index_large : 0,
        weight : 31,
        pos : 0,
        sfx : sound_get("scrap_metal2")
    },
    
    {
        index : 12,
        name : "Bottles",
        value : 80,
        orig_value : 80,
        size : 1,
        index_large : 1,
        weight : 19,
        pos : 0,
        sfx : sound_get("scrap_bottles")
    },
    
    {
        index : 13,
        name : "Cash register",
        value : 160,
        orig_value : 160,
        size : 1,
        index_large : 2,
        weight : 84,
        pos : 0,
        sfx : sound_get("scrap_metal3")
    },
    
    {
        index : 14,
        name : "V-type engine",
        value : 80,
        orig_value : 80,
        size : 1,
        index_large : 3,
        weight : 16,
        pos : 0,
        sfx : sound_get("scrap_metal3")
    },

    {
        index : 15,
        name : "Painting",
        value : 120,
        orig_value : 120,
        size : 1,
        index_large : 4,
        weight : 32,
        pos : 0,
        sfx : sound_get("scrap_plasticlarge")
    },
    
//special scrap
    
    {
        index : 16,
        name : "Bee hive",
        value : 160,
        orig_value : 160,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_beehive")
    },
    
    {
        index : 17,
        name : "Easter egg",
        value : 50,
        orig_value : 50,
        size : 0,
        weight : 3,
        pos : 0,
        sfx : sound_get("scrap_egg")
    },
    
    {
        index : 18,
        name : "Comedy",
        value : 50,
        orig_value : 50,
        size : 0,
        weight : 11,
        pos : 0,
        sfx : sound_get("scrap_cardboard")
    },
    
    {
        index : 19,
        name : "Tragedy",
        value : 50,
        orig_value : 50,
        size : 0,
        weight : 11,
        pos : 0,
        sfx : sound_get("scrap_cardboard")
    },
    
    {
        index : 20,
        name : "Candy",
        value : 40,
        orig_value : 40,
        size : 0,
        weight : 11,
        pos : 0,
        sfx : sound_get("scrap_plastic2")
    },

    {
        index : 21,
        name : "Cookie mold pan",
        value : 40,
        orig_value : 40,
        size : 0,
        weight : 16,
        pos : 0,
        sfx : sound_get("drop_metal_small")
    },
    
    {
        index : 22,
        name : "Flask",
        value : 50,
        orig_value : 50,
        size : 0,
        weight : 19,
        pos : 0,
        sfx : sound_get("scrap_glass1")
    },
    
    {
        index : 23,
        name : "Old phone",
        value : 60,
        orig_value : 60,
        size : 0,
        weight : 5,
        pos : 0,
        sfx : sound_get("scrap_metal1")
    },

    {
        index : 24,
        name : "Red soda",
        value : 90,
        orig_value : 90,
        size : 0,
        weight : 7,
        pos : 0,
        sfx : sound_get("scrap_metal1")
    },

    {
        index : 25,
        name : "Soccer ball",
        value : 70,
        orig_value : 70,
        size : 0,
        weight : 19,
        pos : 0,
        sfx : sound_get("scrap_soccer_land")
    },
    
    {
        index : 26,
        name : "Toy cube",
        value : 40,
        orig_value : 40,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_plastic2")
    },
    
    {
        index : 27,
        name : "Chemical jug",
        value : 100,
        orig_value : 100,
        size : 1,
        index_large : 5,
        weight : 32,
        pos : 0,
        sfx : sound_get("scrap_jug")
    },

    {
        index : 28,
        name : "Control pad",
        value : 90,
        orig_value : 90,
        size : 1,
        index_large : 6,
        weight : 16,
        pos : 0,
        sfx : sound_get("scrap_controlpad")
    },

    {
        index : 29,
        name : "Large axle",
        value : 80,
        orig_value : 80,
        size : 1,
        index_large : 7,
        weight : 16,
        pos : 0,
        sfx : sound_get("scrap_metal3")
    },
    
    {
        index : 30,
        name : "Homemade flashbang",
        value : 50,
        orig_value : 50,
        size : 0,
        weight : 5,
        pos : 0,
        sfx : sound_get("scrap_diy")
    },
    
    {
        index : 31,
        name : "Laser pointer",
        value : 100,
        orig_value : 100,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_laser")
    },
    
    {
        index : 32,
        name : "Hairdryer",
        value : 100,
        orig_value : 100,
        size : 0,
        weight : 7,
        pos : 0,
        sfx : sound_get("scrap_plastic2")
    },
    
    {
        index : 33,
        name : "Coffee mug",
        value : 80,
        orig_value : 80,
        size : 0,
        weight : 5,
        pos : 0,
        sfx : sound_get("scrap_plastic1")
    },
    
    {
        index : 34,
        name : "Toilet paper",
        value : 90,
        orig_value : 90,
        size : 1,
        index_large : 8,
        weight : 5,
        pos : 0,
        sfx : sound_get("scrap_paper")
    },
    
    {
        index : 35,
        name : "Fancy lamp",
        value : 120,
        orig_value : 120,
        size : 1,
        index_large : 9,
        weight : 21,
        pos : 0,
        sfx : sound_get("scrap_metal2")
    },
    
    {
        index : 36,
        name : "Zed Dog",
        value : 0,
        orig_value : 0,
        size : 0,
        weight : 0,
        pos : 0,
        sfx : sound_get("scrap_zeddog")
    }

];