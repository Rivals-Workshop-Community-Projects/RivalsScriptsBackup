nspec_charge = 0;
played_fanfare = false;

if (instance_exists(materia_field) && materia_field != 0){
    materia_field.death_instance = true;
    materia_field.field_hp = 0;    
}