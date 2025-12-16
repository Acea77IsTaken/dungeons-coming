isSleep = 1;          // empieza dormida
isAwake = 0;          // aún no se despierta
addedToInitiative = 0;
chargingExplosion = 0;
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

// --- Telegraph (parpadeo + pulso) ---
// No toca gameplay: solo afecta cómo se dibuja mientras carga.
blink_t = 0;
blink_rate_min = 0.08;
blink_rate_max = 0.55;
blink_col_a = c_white;
blink_col_b = make_color_rgb(120, 255, 120);

pulse_base = 1.0;
pulse_min = 0.00;
pulse_max = 0.12;


ex_fx = 0;            // 1 mientras se dibuja la onda
ex_t = 0;
ex_dur = 14;
ex_r0 = 10;
ex_r1 = 58;
ex_alpha0 = 0.85;


wakeRange = 160;

move_speed = 5;
moving = false;
target_x = x;
target_y = y;

event_inherited()