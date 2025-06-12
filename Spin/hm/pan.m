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
	case 3: // STATE 1 - lampujalan.pml:81 - [(run TrafficLightController(1,2,chanWE))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][1] = 1;
		if (!(addproc(II, 1, 6, 1, 2, now.chanWE)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lampujalan.pml:82 - [(run TrafficLightController(2,3,chanNE))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][2] = 1;
		if (!(addproc(II, 1, 6, 2, 3, now.chanNE)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lampujalan.pml:83 - [(run TrafficLightController(3,4,chanES))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][3] = 1;
		if (!(addproc(II, 1, 6, 3, 4, now.chanES)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - lampujalan.pml:84 - [(run TrafficLightController(4,5,chanSN))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][4] = 1;
		if (!(addproc(II, 1, 6, 4, 5, now.chanSN)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - lampujalan.pml:85 - [(run TrafficLightController(5,6,chanSW))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][5] = 1;
		if (!(addproc(II, 1, 6, 5, 6, now.chanSW)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - lampujalan.pml:86 - [(run TrafficLightController(6,1,chanPed))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][6] = 1;
		if (!(addproc(II, 1, 6, 6, 1, now.chanPed)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - lampujalan.pml:88 - [(run Env_WE())] (0:0:0 - 1)
		IfNotBlocked
		reached[7][7] = 1;
		if (!(addproc(II, 1, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - lampujalan.pml:88 - [(run Env_NE())] (0:0:0 - 1)
		IfNotBlocked
		reached[7][8] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - lampujalan.pml:88 - [(run Env_ES())] (0:0:0 - 1)
		IfNotBlocked
		reached[7][9] = 1;
		if (!(addproc(II, 1, 2, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - lampujalan.pml:89 - [(run Env_SN())] (0:0:0 - 1)
		IfNotBlocked
		reached[7][10] = 1;
		if (!(addproc(II, 1, 3, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - lampujalan.pml:89 - [(run Env_SW())] (0:0:0 - 1)
		IfNotBlocked
		reached[7][11] = 1;
		if (!(addproc(II, 1, 4, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - lampujalan.pml:89 - [(run Env_Ped())] (0:0:0 - 1)
		IfNotBlocked
		reached[7][12] = 1;
		if (!(addproc(II, 1, 5, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - lampujalan.pml:90 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC TrafficLightController */
	case 16: // STATE 1 - lampujalan.pml:35 - [((currentTurn==my_id))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		if (!((((int)now.currentTurn)==((int)((P6 *)_this)->my_id))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - lampujalan.pml:40 - [my_chan?temp_req] (38:0:3 - 1)
		reached[6][2] = 1;
		if (q_len(((P6 *)_this)->my_chan) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P6 *)_this)->temp_req);
		;
		((P6 *)_this)->temp_req = qrecv(((P6 *)_this)->my_chan, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("TrafficLightController:temp_req", ((int)((P6 *)_this)->temp_req));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P6 *)_this)->my_chan);
			sprintf(simtmp, "%d", ((int)((P6 *)_this)->temp_req)); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: temp_req */  (trpt+1)->bup.ovals[1] = ((P6 *)_this)->temp_req;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P6 *)_this)->temp_req = 0;
		/* merge: printf('Lampu #%d menerima permintaan baru.\\n',my_id)(38, 3, 38) */
		reached[6][3] = 1;
		Printf("Lampu #%d menerima permintaan baru.\n", ((int)((P6 *)_this)->my_id));
		/* merge: requests[(my_id-1)] = 1(38, 4, 38) */
		reached[6][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.requests[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]);
		now.requests[ Index((((P6 *)_this)->my_id-1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("requests[(TrafficLightController:my_id-1)]", ((int)now.requests[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]));
#endif
		;
		/* merge: .(goto)(0, 8, 38) */
		reached[6][8] = 1;
		;
		_m = 4; goto P999; /* 3 */
	case 18: // STATE 9 - lampujalan.pml:49 - [(requests[(my_id-1)])] (25:0:1 - 1)
		IfNotBlocked
		reached[6][9] = 1;
		if (!(((int)now.requests[ Index((((int)((P6 *)_this)->my_id)-1), 6) ])))
			continue;
		/* merge: has_conflict = 0(0, 10, 25) */
		reached[6][10] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 0;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 11 - lampujalan.pml:52 - [(((my_id==1)&&(((requests[(3-1)]||requests[(5-1)])||requests[(4-1)])||requests[(6-1)])))] (34:0:1 - 1)
		IfNotBlocked
		reached[6][11] = 1;
		if (!(((((int)((P6 *)_this)->my_id)==1)&&(((((int)now.requests[ Index((3-1), 6) ])||((int)now.requests[ Index((5-1), 6) ]))||((int)now.requests[ Index((4-1), 6) ]))||((int)now.requests[ Index((6-1), 6) ])))))
			continue;
		/* merge: has_conflict = 1(0, 12, 34) */
		reached[6][12] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 1;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		/* merge: .(goto)(0, 26, 34) */
		reached[6][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 13 - lampujalan.pml:53 - [(((my_id==2)&&((requests[(3-1)]||requests[(4-1)])||requests[(6-1)])))] (34:0:1 - 1)
		IfNotBlocked
		reached[6][13] = 1;
		if (!(((((int)((P6 *)_this)->my_id)==2)&&((((int)now.requests[ Index((3-1), 6) ])||((int)now.requests[ Index((4-1), 6) ]))||((int)now.requests[ Index((6-1), 6) ])))))
			continue;
		/* merge: has_conflict = 1(0, 14, 34) */
		reached[6][14] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 1;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		/* merge: .(goto)(0, 26, 34) */
		reached[6][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 15 - lampujalan.pml:54 - [(((my_id==3)&&(((requests[(1-1)]||requests[(2-1)])||requests[(5-1)])||requests[(6-1)])))] (34:0:1 - 1)
		IfNotBlocked
		reached[6][15] = 1;
		if (!(((((int)((P6 *)_this)->my_id)==3)&&(((((int)now.requests[ Index((1-1), 6) ])||((int)now.requests[ Index((2-1), 6) ]))||((int)now.requests[ Index((5-1), 6) ]))||((int)now.requests[ Index((6-1), 6) ])))))
			continue;
		/* merge: has_conflict = 1(0, 16, 34) */
		reached[6][16] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 1;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		/* merge: .(goto)(0, 26, 34) */
		reached[6][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: // STATE 17 - lampujalan.pml:55 - [(((my_id==4)&&(requests[(1-1)]||requests[(2-1)])))] (34:0:1 - 1)
		IfNotBlocked
		reached[6][17] = 1;
		if (!(((((int)((P6 *)_this)->my_id)==4)&&(((int)now.requests[ Index((1-1), 6) ])||((int)now.requests[ Index((2-1), 6) ])))))
			continue;
		/* merge: has_conflict = 1(0, 18, 34) */
		reached[6][18] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 1;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		/* merge: .(goto)(0, 26, 34) */
		reached[6][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 19 - lampujalan.pml:56 - [(((my_id==5)&&(requests[(1-1)]||requests[(3-1)])))] (34:0:1 - 1)
		IfNotBlocked
		reached[6][19] = 1;
		if (!(((((int)((P6 *)_this)->my_id)==5)&&(((int)now.requests[ Index((1-1), 6) ])||((int)now.requests[ Index((3-1), 6) ])))))
			continue;
		/* merge: has_conflict = 1(0, 20, 34) */
		reached[6][20] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 1;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		/* merge: .(goto)(0, 26, 34) */
		reached[6][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 21 - lampujalan.pml:57 - [(((my_id==6)&&((requests[(1-1)]||requests[(2-1)])||requests[(3-1)])))] (34:0:1 - 1)
		IfNotBlocked
		reached[6][21] = 1;
		if (!(((((int)((P6 *)_this)->my_id)==6)&&((((int)now.requests[ Index((1-1), 6) ])||((int)now.requests[ Index((2-1), 6) ]))||((int)now.requests[ Index((3-1), 6) ])))))
			continue;
		/* merge: has_conflict = 1(0, 22, 34) */
		reached[6][22] = 1;
		(trpt+1)->bup.oval = ((int)((P6 *)_this)->_13_1_has_conflict);
		((P6 *)_this)->_13_1_has_conflict = 1;
#ifdef VAR_RANGES
		logval("TrafficLightController:has_conflict", ((int)((P6 *)_this)->_13_1_has_conflict));
#endif
		;
		/* merge: .(goto)(0, 26, 34) */
		reached[6][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 27 - lampujalan.pml:62 - [(!(has_conflict))] (42:0:5 - 1)
		IfNotBlocked
		reached[6][27] = 1;
		if (!( !(((int)((P6 *)_this)->_13_1_has_conflict))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _13_1_has_conflict */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P6 *)_this)->_13_1_has_conflict;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P6 *)_this)->_13_1_has_conflict = 0;
		/* merge: printf('Lampu #%d: HIJAU (Permintaan dilayani)\\n',my_id)(42, 28, 42) */
		reached[6][28] = 1;
		Printf("Lampu #%d: HIJAU (Permintaan dilayani)\n", ((int)((P6 *)_this)->my_id));
		/* merge: statuses[(my_id-1)] = 1(42, 29, 42) */
		reached[6][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)statuses[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]);
		statuses[ Index((((P6 *)_this)->my_id-1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLightController:my_id-1)]", ((int)statuses[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]));
#endif
		;
		/* merge: requests[(my_id-1)] = 0(42, 30, 42) */
		reached[6][30] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.requests[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]);
		now.requests[ Index((((P6 *)_this)->my_id-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("requests[(TrafficLightController:my_id-1)]", ((int)now.requests[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]));
#endif
		;
		/* merge: statuses[(my_id-1)] = 0(42, 31, 42) */
		reached[6][31] = 1;
		(trpt+1)->bup.ovals[3] = ((int)statuses[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]);
		statuses[ Index((((P6 *)_this)->my_id-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLightController:my_id-1)]", ((int)statuses[ Index((((int)((P6 *)_this)->my_id)-1), 6) ]));
#endif
		;
		/* merge: .(goto)(42, 35, 42) */
		reached[6][35] = 1;
		;
		/* merge: .(goto)(42, 39, 42) */
		reached[6][39] = 1;
		;
		/* merge: currentTurn = next_id(42, 40, 42) */
		reached[6][40] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.currentTurn);
		now.currentTurn = ((int)((P6 *)_this)->next_id);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[6][43] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 26: // STATE 33 - lampujalan.pml:68 - [printf('Lampu #%d: MERAH (Ada konflik, menunggu giliran berikutnya)\\n',my_id)] (0:42:1 - 1)
		IfNotBlocked
		reached[6][33] = 1;
		Printf("Lampu #%d: MERAH (Ada konflik, menunggu giliran berikutnya)\n", ((int)((P6 *)_this)->my_id));
		/* merge: .(goto)(42, 35, 42) */
		reached[6][35] = 1;
		;
		/* merge: .(goto)(42, 39, 42) */
		reached[6][39] = 1;
		;
		/* merge: currentTurn = next_id(42, 40, 42) */
		reached[6][40] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P6 *)_this)->next_id);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[6][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 27: // STATE 39 - lampujalan.pml:73 - [.(goto)] (0:42:1 - 4)
		IfNotBlocked
		reached[6][39] = 1;
		;
		/* merge: currentTurn = next_id(42, 40, 42) */
		reached[6][40] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P6 *)_this)->next_id);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[6][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 37 - lampujalan.pml:70 - [(1)] (42:0:1 - 1)
		IfNotBlocked
		reached[6][37] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(42, 39, 42) */
		reached[6][39] = 1;
		;
		/* merge: currentTurn = next_id(42, 40, 42) */
		reached[6][40] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P6 *)_this)->next_id);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[6][43] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 29: // STATE 45 - lampujalan.pml:76 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][45] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Env_Ped */
	case 30: // STATE 1 - lampujalan.pml:26 - [chanPed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		if (q_full(now.chanPed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chanPed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chanPed, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 5 - lampujalan.pml:26 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Env_SW */
	case 32: // STATE 1 - lampujalan.pml:25 - [chanSW!1] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (q_full(now.chanSW))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chanSW);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chanSW, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 5 - lampujalan.pml:25 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Env_SN */
	case 34: // STATE 1 - lampujalan.pml:24 - [chanSN!1] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (q_full(now.chanSN))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chanSN);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chanSN, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 5 - lampujalan.pml:24 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Env_ES */
	case 36: // STATE 1 - lampujalan.pml:23 - [chanES!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.chanES))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chanES);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chanES, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 5 - lampujalan.pml:23 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Env_NE */
	case 38: // STATE 1 - lampujalan.pml:22 - [chanNE!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.chanNE))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chanNE);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chanNE, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 5 - lampujalan.pml:22 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Env_WE */
	case 40: // STATE 1 - lampujalan.pml:21 - [chanWE!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.chanWE))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chanWE);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chanWE, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 5 - lampujalan.pml:21 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
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

