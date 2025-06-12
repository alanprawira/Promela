	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 7
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 9
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 11
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 12
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC TrafficLightController */
;
		;
		
	case 17: // STATE 4
		;
		now.requests[ Index((((P6 *)_this)->my_id-1), 6) ] = trpt->bup.ovals[2];
	/* 0 */	((P6 *)_this)->temp_req = trpt->bup.ovals[1];
		XX = 1;
		unrecv(((P6 *)_this)->my_chan, XX-1, 0, ((int)((P6 *)_this)->temp_req), 1);
		((P6 *)_this)->temp_req = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 18: // STATE 10
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 12
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 14
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 16
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 20
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 22
		;
		((P6 *)_this)->_13_1_has_conflict = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 40
		;
		now.currentTurn = trpt->bup.ovals[4];
		statuses[ Index((((P6 *)_this)->my_id-1), 6) ] = trpt->bup.ovals[3];
		now.requests[ Index((((P6 *)_this)->my_id-1), 6) ] = trpt->bup.ovals[2];
		statuses[ Index((((P6 *)_this)->my_id-1), 6) ] = trpt->bup.ovals[1];
	/* 0 */	((P6 *)_this)->_13_1_has_conflict = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 26: // STATE 40
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 40
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 40
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 45
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Env_Ped */

	case 30: // STATE 1
		;
		_m = unsend(now.chanPed);
		;
		goto R999;

	case 31: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Env_SW */

	case 32: // STATE 1
		;
		_m = unsend(now.chanSW);
		;
		goto R999;

	case 33: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Env_SN */

	case 34: // STATE 1
		;
		_m = unsend(now.chanSN);
		;
		goto R999;

	case 35: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Env_ES */

	case 36: // STATE 1
		;
		_m = unsend(now.chanES);
		;
		goto R999;

	case 37: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Env_NE */

	case 38: // STATE 1
		;
		_m = unsend(now.chanNE);
		;
		goto R999;

	case 39: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Env_WE */

	case 40: // STATE 1
		;
		_m = unsend(now.chanWE);
		;
		goto R999;

	case 41: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;
	}

