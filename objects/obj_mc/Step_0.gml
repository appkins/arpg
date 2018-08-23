switch(state){
	case mc_state.normal: scr_mc_normal(); break;
	case mc_state.attack: scr_mc_attack(); break;
	case mc_state.attack2: scr_mc_attack2(); break;
	case mc_state.attack3: scr_mc_attack3(); break;
	case mc_state.dodge: scr_mc_dodge(); break;
}