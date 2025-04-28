	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */
;
		;
		
	case 4: // STATE 2
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 5
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 12
		;
		_m = unsend(now.RtoL[0]);
		;
		goto R999;

	case 9: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Node */
;
		;
		
	case 11: // STATE 2
		;
		XX = 1;
		unrecv(now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 0, ((P0 *)_this)->action, 1);
		unrecv(now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 1, ((int)((P0 *)_this)->maxid), 0);
		((P0 *)_this)->action = trpt->bup.ovals[0];
		((P0 *)_this)->maxid = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 3
		;
	/* 0 */	((P0 *)_this)->action = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 14: // STATE 5
		;
		_m = unsend(now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]);
		;
		goto R999;

	case 15: // STATE 7
		;
		_m = unsend(now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]);
		;
		goto R999;
;
		;
		
	case 17: // STATE 15
		;
	/* 0 */	((P0 *)_this)->maxid = trpt->bup.ovals[2];
		XX = 1;
		unrecv(now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 0, ((P0 *)_this)->action, 1);
		unrecv(now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 1, ((int)((P0 *)_this)->maxid), 0);
		((P0 *)_this)->action = trpt->bup.ovals[0];
		((P0 *)_this)->maxid = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 18: // STATE 16
		;
	/* 0 */	((P0 *)_this)->action = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 18
		;
		_m = unsend(now.LtoR[ Index((((((int)((P0 *)_this)->id)+4)-1)%4), 4) ]);
		;
		goto R999;

	case 20: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;
	}

