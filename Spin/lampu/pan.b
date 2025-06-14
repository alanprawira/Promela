	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f6 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f5 */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f4 */
;
		;
		;
		;
		
	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f3 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f2 */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f1 */
;
		;
		;
		;
		
	case 20: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l6 */
;
		;
		;
		;
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l5 */
;
		;
		;
		;
		
	case 26: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l4 */
;
		;
		;
		;
		
	case 29: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l3 */
;
		;
		;
		;
		
	case 32: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l2 */
;
		;
		;
		;
		
	case 35: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l1 */
;
		;
		;
		;
		
	case 38: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sPED */
;
		
	case 39: // STATE 1
		goto R999;

	case 40: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sSW */
;
		
	case 41: // STATE 1
		goto R999;

	case 42: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sSN */
;
		
	case 43: // STATE 1
		goto R999;

	case 44: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sES */
;
		
	case 45: // STATE 1
		goto R999;

	case 46: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sNE */
;
		
	case 47: // STATE 1
		goto R999;

	case 48: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sWE */
;
		
	case 49: // STATE 1
		goto R999;

	case 50: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 51: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 52: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 53: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 54: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 55: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 56: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 57: // STATE 7
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 58: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 59: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PedTrafficGenerator */

	case 60: // STATE 1
		;
		_m = unsend(now.PED_LIGHT);
		;
		goto R999;

	case 61: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CarTrafficGenerator */

	case 62: // STATE 1
		;
		_m = unsend(now.WE_LIGHT);
		;
		goto R999;

	case 63: // STATE 2
		;
		_m = unsend(now.NE_LIGHT);
		;
		goto R999;

	case 64: // STATE 3
		;
		_m = unsend(now.ES_LIGHT);
		;
		goto R999;

	case 65: // STATE 4
		;
		_m = unsend(now.SN_LIGHT);
		;
		goto R999;

	case 66: // STATE 5
		;
		_m = unsend(now.SW_LIGHT);
		;
		goto R999;

	case 67: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC TrafficLight */
;
		;
		
	case 69: // STATE 2
		;
		XX = 1;
		unrecv(((P0 *)_this)->tlChan, XX-1, 0, ((int)((P0 *)_this)->temp), 1);
		((P0 *)_this)->temp = trpt->bup.oval;
		;
		;
		goto R999;

	case 70: // STATE 3
		;
		now.requests[0] = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 4
		;
		now.queue[ Index((((P0 *)_this)->now-1), 6) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 72: // STATE 5
		goto R999;
;
		;
		
	case 74: // STATE 12
		;
		now.requests[ Index(((P0 *)_this)->now, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 13
		;
		now.statuses[ Index((((P0 *)_this)->now-1), 6) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		
	case 80: // STATE 22
		;
		now.statuses[ Index((((P0 *)_this)->now-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 23
		;
		now.queue[ Index((((P0 *)_this)->now-1), 6) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 83: // STATE 25
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 85: // STATE 28
		;
		((P0 *)_this)->fValue = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 30
		;
		((P0 *)_this)->fValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 88: // STATE 34
		;
		((P0 *)_this)->sValue = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 36
		;
		((P0 *)_this)->sValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 91: // STATE 40
		;
		((P0 *)_this)->tValue = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 42
		;
		((P0 *)_this)->tValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 94: // STATE 46
		;
		((P0 *)_this)->uValue = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 48
		;
		((P0 *)_this)->uValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: // STATE 52
		;
		((P0 *)_this)->vValue = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 54
		;
		((P0 *)_this)->vValue = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 57
		;
		((P0 *)_this)->nValue = trpt->bup.oval;
		;
		goto R999;
;
		
	case 100: // STATE 58
		goto R999;
;
		;
		
	case 102: // STATE 62
		;
		now.requests[ Index(((P0 *)_this)->now, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 104: // STATE 64
		;
		now.requests[ Index(((P0 *)_this)->fProblem, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 106: // STATE 70
		;
		now.requests[ Index(((P0 *)_this)->sProblem, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 108: // STATE 76
		;
		now.requests[ Index(((P0 *)_this)->tProblem, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 110: // STATE 82
		;
		now.requests[ Index(((P0 *)_this)->uProblem, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 112: // STATE 88
		;
		now.requests[ Index(((P0 *)_this)->vProblem, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 113: // STATE 90
		goto R999;
;
		
	case 114: // STATE 93
		goto R999;
;
		;
		
	case 116: // STATE 98
		;
		now.statuses[ Index((((P0 *)_this)->now-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 99
		;
		now.queue[ Index((((P0 *)_this)->now-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 100
		;
		now.requests[ Index(((P0 *)_this)->now, 7) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 119: // STATE 103
		goto R999;

	case 120: // STATE 107
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 108
		;
		now.requests[0] = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 112
		;
		now.requests[ Index(((P0 *)_this)->now, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 123: // STATE 113
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 121
		;
		p_restor(II);
		;
		;
		goto R999;
	}

