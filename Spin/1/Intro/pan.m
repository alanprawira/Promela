#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - leader.pml:59 - [printf('Number of procs = %d\\n',4)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("Number of procs = %d\n", 4);
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - leader.pml:66 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->i);
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - leader.pml:68 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)((P1 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - leader.pml:69 - [(run Node(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, ((int)((P1 *)_this)->i))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - leader.pml:70 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->i);
		((P1 *)_this)->i = (((int)((P1 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - leader.pml:78 - [RtoL[0]!token,0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (q_len(now.RtoL[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.RtoL[0]);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.RtoL[0], 0, 3, 0, 2);
		{ boq = now.RtoL[0]; };
		_m = 2; goto P999; /* 0 */
	case 9: // STATE 13 - leader.pml:79 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Node */
	case 10: // STATE 1 - leader.pml:22 - [printf('proc %d starts\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("proc %d starts\n", ((int)((P0 *)_this)->id));
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 2 - leader.pml:25 - [LtoR[id]?action,maxid] (0:0:2 - 1)
		reached[0][2] = 1;
		if (boq != now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ]) continue;
		if (q_len(now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->action;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->maxid);
		;
		((P0 *)_this)->action = qrecv(now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Node:action", ((P0 *)_this)->action);
#endif
		;
		((P0 *)_this)->maxid = qrecv(now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Node:maxid", ((int)((P0 *)_this)->maxid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ]);
			sprintf(simtmp, "%d", ((P0 *)_this)->action); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->maxid)); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.LtoR[ Index(((int)((P0 *)_this)->id), 4) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 3 - leader.pml:28 - [((action==elect))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((P0 *)_this)->action==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: action */  (trpt+1)->bup.oval = ((P0 *)_this)->action;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->action = 0;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - leader.pml:31 - [((maxid>=id))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)((P0 *)_this)->maxid)>=((int)((P0 *)_this)->id))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 5 - leader.pml:32 - [RtoL[((id+1)%4)]!elect,maxid] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_len(now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->maxid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ], 0, 2, ((int)((P0 *)_this)->maxid), 2);
		{ boq = now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 7 - leader.pml:35 - [RtoL[((id+1)%4)]!elect,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (q_len(now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ], 0, 2, ((int)((P0 *)_this)->id), 2);
		{ boq = now.RtoL[ Index(((((int)((P0 *)_this)->id)+1)%4), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 11 - leader.pml:38 - [printf('Proc %d: leader is %d\\n',id,maxid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		Printf("Proc %d: leader is %d\n", ((int)((P0 *)_this)->id), ((int)((P0 *)_this)->maxid));
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - leader.pml:42 - [RtoL[id]?action,maxid] (0:0:3 - 1)
		reached[0][15] = 1;
		if (boq != now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ]) continue;
		if (q_len(now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->action;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->maxid);
		;
		((P0 *)_this)->action = qrecv(now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Node:action", ((P0 *)_this)->action);
#endif
		;
		((P0 *)_this)->maxid = qrecv(now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ], XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Node:maxid", ((int)((P0 *)_this)->maxid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ]);
			sprintf(simtmp, "%d", ((P0 *)_this)->action); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->maxid)); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.RtoL[ Index(((int)((P0 *)_this)->id), 4) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 2: maxid */  (trpt+1)->bup.ovals[2] = ((P0 *)_this)->maxid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->maxid = 0;
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 16 - leader.pml:45 - [((action==token))] (18:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((P0 *)_this)->action==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: action */  (trpt+1)->bup.oval = ((P0 *)_this)->action;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->action = 0;
		/* merge: printf('Proc %d: start election\\n',id)(0, 17, 18) */
		reached[0][17] = 1;
		Printf("Proc %d: start election\n", ((int)((P0 *)_this)->id));
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 18 - leader.pml:48 - [LtoR[(((id+4)-1)%4)]!elect,id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (q_len(now.LtoR[ Index((((((int)((P0 *)_this)->id)+4)-1)%4), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LtoR[ Index((((((int)((P0 *)_this)->id)+4)-1)%4), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LtoR[ Index((((((int)((P0 *)_this)->id)+4)-1)%4), 4) ], 0, 2, ((int)((P0 *)_this)->id), 2);
		{ boq = now.LtoR[ Index((((((int)((P0 *)_this)->id)+4)-1)%4), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 26 - leader.pml:53 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

