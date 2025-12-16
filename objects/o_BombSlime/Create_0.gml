isSleep = 1;          // empieza dormida
isAwake = 0;          // aún no se despierta
addedToInitiative = 0;
chargingExplosion = 0
turnsLeft = 3;

canAct = 0;
obj = 0
turn_finished = 0;

defense = 12;

maxHp = 12;
hp = maxHp;

// Stats de ataque de la rata
attackDmg = 20;        // daño que hace la rata
//attackAccuracy = -3;   // explota, no tiene accuracy
attackRange = 32;     // se va a usar para el radio de explocion

// Distancia a la que se despierta y entra a la iniciativa
wakeRange = 160;

// movimiento suave
move_speed = 5;
moving = false;
target_x = x;
target_y = y;

event_inherited()