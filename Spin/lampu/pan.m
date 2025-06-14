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

		 /* CLAIM f6 */
	case 3: // STATE 1 - _spin_nvr.tmp:178 - [(!((statuses[(6-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[21][1] = 1;
		if (!( !((((int)now.statuses[ Index((6-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:183 - [(!((statuses[(6-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[21][8] = 1;
		if (!( !((((int)now.statuses[ Index((6-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:185 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[21][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f5 */
	case 6: // STATE 1 - _spin_nvr.tmp:167 - [(!((statuses[(5-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][1] = 1;
		if (!( !((((int)now.statuses[ Index((5-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:172 - [(!((statuses[(5-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][8] = 1;
		if (!( !((((int)now.statuses[ Index((5-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:174 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f4 */
	case 9: // STATE 1 - _spin_nvr.tmp:156 - [(!((statuses[(4-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][1] = 1;
		if (!( !((((int)now.statuses[ Index((4-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:161 - [(!((statuses[(4-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][8] = 1;
		if (!( !((((int)now.statuses[ Index((4-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:163 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f3 */
	case 12: // STATE 1 - _spin_nvr.tmp:145 - [(!((statuses[(3-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][1] = 1;
		if (!( !((((int)now.statuses[ Index((3-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:150 - [(!((statuses[(3-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][8] = 1;
		if (!( !((((int)now.statuses[ Index((3-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:152 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f2 */
	case 15: // STATE 1 - _spin_nvr.tmp:134 - [(!((statuses[(2-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][1] = 1;
		if (!( !((((int)now.statuses[ Index((2-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:139 - [(!((statuses[(2-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][8] = 1;
		if (!( !((((int)now.statuses[ Index((2-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:141 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f1 */
	case 18: // STATE 1 - _spin_nvr.tmp:123 - [(!((statuses[(1-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][1] = 1;
		if (!( !((((int)now.statuses[ Index((1-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - _spin_nvr.tmp:128 - [(!((statuses[(1-1)]==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][8] = 1;
		if (!( !((((int)now.statuses[ Index((1-1), 6) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - _spin_nvr.tmp:130 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l6 */
	case 21: // STATE 1 - _spin_nvr.tmp:112 - [((!(!(((queue[(6-1)]==1)&&(statuses[(6-1)]==0))))&&!((statuses[(6-1)]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!(( !( !(((((int)now.queue[ Index((6-1), 6) ])==1)&&(((int)now.statuses[ Index((6-1), 6) ])==0))))&& !((((int)now.statuses[ Index((6-1), 6) ])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:117 - [(!((statuses[(6-1)]==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][8] = 1;
		if (!( !((((int)now.statuses[ Index((6-1), 6) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:119 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l5 */
	case 24: // STATE 1 - _spin_nvr.tmp:101 - [((!(!(((queue[(5-1)]==1)&&(statuses[(5-1)]==0))))&&!((statuses[(5-1)]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!(( !( !(((((int)now.queue[ Index((5-1), 6) ])==1)&&(((int)now.statuses[ Index((5-1), 6) ])==0))))&& !((((int)now.statuses[ Index((5-1), 6) ])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - _spin_nvr.tmp:106 - [(!((statuses[(5-1)]==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][8] = 1;
		if (!( !((((int)now.statuses[ Index((5-1), 6) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:108 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l4 */
	case 27: // STATE 1 - _spin_nvr.tmp:90 - [((!(!(((queue[(4-1)]==1)&&(statuses[(4-1)]==0))))&&!((statuses[(4-1)]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!(( !( !(((((int)now.queue[ Index((4-1), 6) ])==1)&&(((int)now.statuses[ Index((4-1), 6) ])==0))))&& !((((int)now.statuses[ Index((4-1), 6) ])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 8 - _spin_nvr.tmp:95 - [(!((statuses[(4-1)]==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][8] = 1;
		if (!( !((((int)now.statuses[ Index((4-1), 6) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 13 - _spin_nvr.tmp:97 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l3 */
	case 30: // STATE 1 - _spin_nvr.tmp:79 - [((!(!(((queue[(3-1)]==1)&&(statuses[(3-1)]==0))))&&!((statuses[(3-1)]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!(( !( !(((((int)now.queue[ Index((3-1), 6) ])==1)&&(((int)now.statuses[ Index((3-1), 6) ])==0))))&& !((((int)now.statuses[ Index((3-1), 6) ])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 8 - _spin_nvr.tmp:84 - [(!((statuses[(3-1)]==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][8] = 1;
		if (!( !((((int)now.statuses[ Index((3-1), 6) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 13 - _spin_nvr.tmp:86 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l2 */
	case 33: // STATE 1 - _spin_nvr.tmp:68 - [((!(!(((queue[(2-1)]==1)&&(statuses[(2-1)]==0))))&&!((statuses[(2-1)]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!(( !( !(((((int)now.queue[ Index((2-1), 6) ])==1)&&(((int)now.statuses[ Index((2-1), 6) ])==0))))&& !((((int)now.statuses[ Index((2-1), 6) ])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 8 - _spin_nvr.tmp:73 - [(!((statuses[(2-1)]==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][8] = 1;
		if (!( !((((int)now.statuses[ Index((2-1), 6) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 13 - _spin_nvr.tmp:75 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l1 */
	case 36: // STATE 1 - _spin_nvr.tmp:57 - [((!(!(((queue[(1-1)]==1)&&(statuses[(1-1)]==0))))&&!((statuses[(1-1)]==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!(( !( !(((((int)now.queue[ Index((1-1), 6) ])==1)&&(((int)now.statuses[ Index((1-1), 6) ])==0))))&& !((((int)now.statuses[ Index((1-1), 6) ])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 8 - _spin_nvr.tmp:62 - [(!((statuses[(1-1)]==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][8] = 1;
		if (!( !((((int)now.statuses[ Index((1-1), 6) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 13 - _spin_nvr.tmp:64 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sPED */
	case 39: // STATE 1 - _spin_nvr.tmp:48 - [(!(!((statuses[(6-1)]&&((statuses[(1-1)]||statuses[(2-1)])||statuses[(3-1)])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!( !( !((((int)now.statuses[ Index((6-1), 6) ])&&((((int)now.statuses[ Index((1-1), 6) ])||((int)now.statuses[ Index((2-1), 6) ]))||((int)now.statuses[ Index((3-1), 6) ])))))))
			continue;
		/* merge: assert(!(!(!((statuses[(6-1)]&&((statuses[(1-1)]||statuses[(2-1)])||statuses[(3-1)]))))))(0, 2, 6) */
		reached[9][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[ Index((6-1), 6) ])&&((((int)now.statuses[ Index((1-1), 6) ])||((int)now.statuses[ Index((2-1), 6) ]))||((int)now.statuses[ Index((3-1), 6) ])))))), " !( !( !((statuses[(6-1)]&&((statuses[(1-1)]||statuses[(2-1)])||statuses[(3-1)])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[9][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 10 - _spin_nvr.tmp:53 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sSW */
	case 41: // STATE 1 - _spin_nvr.tmp:39 - [(!(!((statuses[(5-1)]&&(statuses[(1-1)]||statuses[(3-1)])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!( !( !((((int)now.statuses[ Index((5-1), 6) ])&&(((int)now.statuses[ Index((1-1), 6) ])||((int)now.statuses[ Index((3-1), 6) ])))))))
			continue;
		/* merge: assert(!(!(!((statuses[(5-1)]&&(statuses[(1-1)]||statuses[(3-1)]))))))(0, 2, 6) */
		reached[8][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[ Index((5-1), 6) ])&&(((int)now.statuses[ Index((1-1), 6) ])||((int)now.statuses[ Index((3-1), 6) ])))))), " !( !( !((statuses[(5-1)]&&(statuses[(1-1)]||statuses[(3-1)])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[8][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 10 - _spin_nvr.tmp:44 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sSN */
	case 43: // STATE 1 - _spin_nvr.tmp:30 - [(!(!((statuses[(4-1)]&&((statuses[(1-1)]||statuses[(2-1)])||statuses[(3-1)])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !( !((((int)now.statuses[ Index((4-1), 6) ])&&((((int)now.statuses[ Index((1-1), 6) ])||((int)now.statuses[ Index((2-1), 6) ]))||((int)now.statuses[ Index((3-1), 6) ])))))))
			continue;
		/* merge: assert(!(!(!((statuses[(4-1)]&&((statuses[(1-1)]||statuses[(2-1)])||statuses[(3-1)]))))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[ Index((4-1), 6) ])&&((((int)now.statuses[ Index((1-1), 6) ])||((int)now.statuses[ Index((2-1), 6) ]))||((int)now.statuses[ Index((3-1), 6) ])))))), " !( !( !((statuses[(4-1)]&&((statuses[(1-1)]||statuses[(2-1)])||statuses[(3-1)])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 10 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sES */
	case 45: // STATE 1 - _spin_nvr.tmp:21 - [(!(!((statuses[(3-1)]&&((((statuses[(6-1)]||statuses[(4-1)])||statuses[(2-1)])||statuses[(5-1)])||statuses[(1-1)])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !( !((((int)now.statuses[ Index((3-1), 6) ])&&((((((int)now.statuses[ Index((6-1), 6) ])||((int)now.statuses[ Index((4-1), 6) ]))||((int)now.statuses[ Index((2-1), 6) ]))||((int)now.statuses[ Index((5-1), 6) ]))||((int)now.statuses[ Index((1-1), 6) ])))))))
			continue;
		/* merge: assert(!(!(!((statuses[(3-1)]&&((((statuses[(6-1)]||statuses[(4-1)])||statuses[(2-1)])||statuses[(5-1)])||statuses[(1-1)]))))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[ Index((3-1), 6) ])&&((((((int)now.statuses[ Index((6-1), 6) ])||((int)now.statuses[ Index((4-1), 6) ]))||((int)now.statuses[ Index((2-1), 6) ]))||((int)now.statuses[ Index((5-1), 6) ]))||((int)now.statuses[ Index((1-1), 6) ])))))), " !( !( !((statuses[(3-1)]&&((((statuses[(6-1)]||statuses[(4-1)])||statuses[(2-1)])||statuses[(5-1)])||statuses[(1-1)])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 46: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sNE */
	case 47: // STATE 1 - _spin_nvr.tmp:12 - [(!(!((statuses[(2-1)]&&((statuses[(3-1)]||statuses[(4-1)])||statuses[(6-1)])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !( !((((int)now.statuses[ Index((2-1), 6) ])&&((((int)now.statuses[ Index((3-1), 6) ])||((int)now.statuses[ Index((4-1), 6) ]))||((int)now.statuses[ Index((6-1), 6) ])))))))
			continue;
		/* merge: assert(!(!(!((statuses[(2-1)]&&((statuses[(3-1)]||statuses[(4-1)])||statuses[(6-1)]))))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[ Index((2-1), 6) ])&&((((int)now.statuses[ Index((3-1), 6) ])||((int)now.statuses[ Index((4-1), 6) ]))||((int)now.statuses[ Index((6-1), 6) ])))))), " !( !( !((statuses[(2-1)]&&((statuses[(3-1)]||statuses[(4-1)])||statuses[(6-1)])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sWE */
	case 49: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((statuses[(1-1)]&&(((statuses[(3-1)]||statuses[(5-1)])||statuses[(4-1)])||statuses[(6-1)])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !( !((((int)now.statuses[ Index((1-1), 6) ])&&(((((int)now.statuses[ Index((3-1), 6) ])||((int)now.statuses[ Index((5-1), 6) ]))||((int)now.statuses[ Index((4-1), 6) ]))||((int)now.statuses[ Index((6-1), 6) ])))))))
			continue;
		/* merge: assert(!(!(!((statuses[(1-1)]&&(((statuses[(3-1)]||statuses[(5-1)])||statuses[(4-1)])||statuses[(6-1)]))))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[ Index((1-1), 6) ])&&(((((int)now.statuses[ Index((3-1), 6) ])||((int)now.statuses[ Index((5-1), 6) ]))||((int)now.statuses[ Index((4-1), 6) ]))||((int)now.statuses[ Index((6-1), 6) ])))))), " !( !( !((statuses[(1-1)]&&(((statuses[(3-1)]||statuses[(5-1)])||statuses[(4-1)])||statuses[(6-1)])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 50: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 51: // STATE 1 - hm.pml:150 - [(run TrafficLight(1,2,3,5,4,6,0,WE_LIGHT))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 1, 2, 3, 5, 4, 6, 0, now.WE_LIGHT)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 2 - hm.pml:151 - [(run TrafficLight(2,3,3,4,6,0,0,NE_LIGHT))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0, 2, 3, 3, 4, 6, 0, 0, now.NE_LIGHT)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 3 - hm.pml:152 - [(run TrafficLight(3,4,1,2,4,5,6,ES_LIGHT))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 0, 3, 4, 1, 2, 4, 5, 6, now.ES_LIGHT)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 4 - hm.pml:153 - [(run TrafficLight(4,5,1,2,3,0,0,SN_LIGHT))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(addproc(II, 1, 0, 4, 5, 1, 2, 3, 0, 0, now.SN_LIGHT)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 5 - hm.pml:154 - [(run TrafficLight(5,6,1,3,0,0,0,SW_LIGHT))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(addproc(II, 1, 0, 5, 6, 1, 3, 0, 0, 0, now.SW_LIGHT)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 6 - hm.pml:155 - [(run TrafficLight(6,1,1,2,3,0,0,PED_LIGHT))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 0, 6, 1, 1, 2, 3, 0, 0, now.PED_LIGHT)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 7 - hm.pml:158 - [(run CarTrafficGenerator())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 8 - hm.pml:159 - [(run PedTrafficGenerator())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!(addproc(II, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 9 - hm.pml:160 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PedTrafficGenerator */
	case 60: // STATE 1 - hm.pml:144 - [PED_LIGHT!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.PED_LIGHT))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.PED_LIGHT);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.PED_LIGHT, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 61: // STATE 5 - hm.pml:146 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CarTrafficGenerator */
	case 62: // STATE 1 - hm.pml:134 - [WE_LIGHT!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.WE_LIGHT))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.WE_LIGHT);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.WE_LIGHT, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 2 - hm.pml:135 - [NE_LIGHT!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.NE_LIGHT))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_LIGHT);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_LIGHT, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 64: // STATE 3 - hm.pml:136 - [ES_LIGHT!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.ES_LIGHT))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ES_LIGHT);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ES_LIGHT, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 4 - hm.pml:137 - [SN_LIGHT!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.SN_LIGHT))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.SN_LIGHT);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.SN_LIGHT, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 66: // STATE 5 - hm.pml:138 - [SW_LIGHT!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (q_full(now.SW_LIGHT))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.SW_LIGHT);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.SW_LIGHT, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 67: // STATE 9 - hm.pml:140 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC TrafficLight */
	case 68: // STATE 1 - hm.pml:48 - [((currentTurn==now))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.currentTurn)==((int)((P0 *)_this)->now))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 2 - hm.pml:50 - [tlChan?temp] (0:0:1 - 1)
		reached[0][2] = 1;
		if (q_len(((P0 *)_this)->tlChan) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->temp);
		;
		((P0 *)_this)->temp = qrecv(((P0 *)_this)->tlChan, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("TrafficLight:temp", ((int)((P0 *)_this)->temp));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->tlChan);
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->temp)); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 70: // STATE 3 - hm.pml:51 - [requests[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.requests[0];
		now.requests[0] = 0;
#ifdef VAR_RANGES
		logval("requests[0]", now.requests[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 4 - hm.pml:52 - [queue[(now-1)] = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]);
		now.queue[ Index((((P0 *)_this)->now-1), 6) ] = ((int)((P0 *)_this)->temp);
#ifdef VAR_RANGES
		logval("queue[(TrafficLight:now-1)]", ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 5 - hm.pml:54 - [printf('\\n\\n')] (0:18:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		Printf("\n\n");
		/* merge: printf('Proses :%d\\n',now)(18, 6, 18) */
		reached[0][6] = 1;
		Printf("Proses :%d\n", ((int)((P0 *)_this)->now));
		/* merge: printf('Status Hijau = %d\\n',statuses[(now-1)])(18, 7, 18) */
		reached[0][7] = 1;
		Printf("Status Hijau = %d\n", ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
		/* merge: printf('Mobil? %d\\n',queue[(now-1)])(18, 8, 18) */
		reached[0][8] = 1;
		Printf("Mobil? %d\n", ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
		/* merge: printf('Permintaan: %d\\n',requests[now])(18, 9, 18) */
		reached[0][9] = 1;
		Printf("Permintaan: %d\n", now.requests[ Index(((int)((P0 *)_this)->now), 7) ]);
		_m = 3; goto P999; /* 4 */
	case 73: // STATE 11 - hm.pml:62 - [((statuses[(now-1)]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 12 - hm.pml:63 - [requests[now] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->now), 7) ];
		now.requests[ Index(((P0 *)_this)->now, 7) ] = 0;
#ifdef VAR_RANGES
		logval("requests[TrafficLight:now]", now.requests[ Index(((int)((P0 *)_this)->now), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 13 - hm.pml:64 - [statuses[(now-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]);
		now.statuses[ Index((((P0 *)_this)->now-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLight:now-1)]", ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 14 - hm.pml:65 - [printf('Set warna menjadi merah di %d\\n',now)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		Printf("Set warna menjadi merah di %d\n", ((int)((P0 *)_this)->now));
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 15 - hm.pml:66 - [printf('Dan sekarang permintaannya adalah: %d\\n',requests[now])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		Printf("Dan sekarang permintaannya adalah: %d\n", now.requests[ Index(((int)((P0 *)_this)->now), 7) ]);
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 20 - hm.pml:71 - [((requests[now]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->now), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 21 - hm.pml:77 - [((((((requests[fProblem]==0)&&(requests[sProblem]==0))&&(requests[tProblem]==0))&&(requests[uProblem]==0))&&(requests[vProblem]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((((((now.requests[ Index(((int)((P0 *)_this)->fProblem), 7) ]==0)&&(now.requests[ Index(((int)((P0 *)_this)->sProblem), 7) ]==0))&&(now.requests[ Index(((int)((P0 *)_this)->tProblem), 7) ]==0))&&(now.requests[ Index(((int)((P0 *)_this)->uProblem), 7) ]==0))&&(now.requests[ Index(((int)((P0 *)_this)->vProblem), 7) ]==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 22 - hm.pml:79 - [statuses[(now-1)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]);
		now.statuses[ Index((((P0 *)_this)->now-1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLight:now-1)]", ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 23 - hm.pml:80 - [queue[(now-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]);
		now.queue[ Index((((P0 *)_this)->now-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("queue[(TrafficLight:now-1)]", ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 24 - hm.pml:81 - [printf('Set warna hijau (tidak ada konflik) di %d\\n',now)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		Printf("Set warna hijau (tidak ada konflik) di %d\n", ((int)((P0 *)_this)->now));
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 25 - hm.pml:82 - [currentTurn = next] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P0 *)_this)->next);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 27 - hm.pml:85 - [((requests[fProblem]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->fProblem), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 28 - hm.pml:85 - [fValue = requests[fProblem]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->fValue;
		((P0 *)_this)->fValue = now.requests[ Index(((int)((P0 *)_this)->fProblem), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:fValue", ((P0 *)_this)->fValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 30 - hm.pml:85 - [fValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->fValue;
		((P0 *)_this)->fValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:fValue", ((P0 *)_this)->fValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 33 - hm.pml:86 - [((requests[sProblem]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->sProblem), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 34 - hm.pml:86 - [sValue = requests[sProblem]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->sValue;
		((P0 *)_this)->sValue = now.requests[ Index(((int)((P0 *)_this)->sProblem), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:sValue", ((P0 *)_this)->sValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 36 - hm.pml:86 - [sValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->sValue;
		((P0 *)_this)->sValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:sValue", ((P0 *)_this)->sValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 39 - hm.pml:87 - [((requests[tProblem]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->tProblem), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 40 - hm.pml:87 - [tValue = requests[tProblem]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->tValue;
		((P0 *)_this)->tValue = now.requests[ Index(((int)((P0 *)_this)->tProblem), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:tValue", ((P0 *)_this)->tValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 42 - hm.pml:87 - [tValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->tValue;
		((P0 *)_this)->tValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:tValue", ((P0 *)_this)->tValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 45 - hm.pml:88 - [((requests[uProblem]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->uProblem), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 46 - hm.pml:88 - [uValue = requests[uProblem]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->uValue;
		((P0 *)_this)->uValue = now.requests[ Index(((int)((P0 *)_this)->uProblem), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:uValue", ((P0 *)_this)->uValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 48 - hm.pml:88 - [uValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->uValue;
		((P0 *)_this)->uValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:uValue", ((P0 *)_this)->uValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 51 - hm.pml:89 - [((requests[vProblem]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->vProblem), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 52 - hm.pml:89 - [vValue = requests[vProblem]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->vValue;
		((P0 *)_this)->vValue = now.requests[ Index(((int)((P0 *)_this)->vProblem), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:vValue", ((P0 *)_this)->vValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 54 - hm.pml:89 - [vValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->vValue;
		((P0 *)_this)->vValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:vValue", ((P0 *)_this)->vValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 57 - hm.pml:91 - [nValue = requests[now]] (0:0:1 - 3)
		IfNotBlocked
		reached[0][57] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->nValue;
		((P0 *)_this)->nValue = now.requests[ Index(((int)((P0 *)_this)->now), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:nValue", ((P0 *)_this)->nValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 58 - hm.pml:93 - [printf('(%d) jalur konflik: %d,%d,%d,%d,%d\\n',now,fProblem,sProblem,tProblem,uProblem,vProblem)] (0:101:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		Printf("(%d) jalur konflik: %d,%d,%d,%d,%d\n", ((int)((P0 *)_this)->now), ((int)((P0 *)_this)->fProblem), ((int)((P0 *)_this)->sProblem), ((int)((P0 *)_this)->tProblem), ((int)((P0 *)_this)->uProblem), ((int)((P0 *)_this)->vProblem));
		/* merge: printf('Dan nilai untuk #%d : (%d) dan untuk konflik: %d,%d,%d,%d,%d\\n',now,nValue,fValue,sValue,tValue,uValue,vValue)(101, 59, 101) */
		reached[0][59] = 1;
		Printf("Dan nilai untuk #%d : (%d) dan untuk konflik: %d,%d,%d,%d,%d\n", ((int)((P0 *)_this)->now), ((P0 *)_this)->nValue, ((P0 *)_this)->fValue, ((P0 *)_this)->sValue, ((P0 *)_this)->tValue, ((P0 *)_this)->uValue, ((P0 *)_this)->vValue);
		_m = 3; goto P999; /* 1 */
	case 101: // STATE 61 - hm.pml:98 - [((((((fValue>nValue)||(sValue>nValue))||(tValue>nValue))||(uValue>nValue))||(vValue>nValue)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((((((((P0 *)_this)->fValue>((P0 *)_this)->nValue)||(((P0 *)_this)->sValue>((P0 *)_this)->nValue))||(((P0 *)_this)->tValue>((P0 *)_this)->nValue))||(((P0 *)_this)->uValue>((P0 *)_this)->nValue))||(((P0 *)_this)->vValue>((P0 *)_this)->nValue))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 62 - hm.pml:99 - [requests[now] = (nValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->now), 7) ];
		now.requests[ Index(((P0 *)_this)->now, 7) ] = (((P0 *)_this)->nValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:now]", now.requests[ Index(((int)((P0 *)_this)->now), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 63 - hm.pml:100 - [((fValue>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((((P0 *)_this)->fValue>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 64 - hm.pml:100 - [requests[fProblem] = (fValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->fProblem), 7) ];
		now.requests[ Index(((P0 *)_this)->fProblem, 7) ] = (((P0 *)_this)->fValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:fProblem]", now.requests[ Index(((int)((P0 *)_this)->fProblem), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 69 - hm.pml:101 - [((sValue>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((((P0 *)_this)->sValue>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 70 - hm.pml:101 - [requests[sProblem] = (sValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->sProblem), 7) ];
		now.requests[ Index(((P0 *)_this)->sProblem, 7) ] = (((P0 *)_this)->sValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:sProblem]", now.requests[ Index(((int)((P0 *)_this)->sProblem), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 75 - hm.pml:102 - [((tValue>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!((((P0 *)_this)->tValue>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 76 - hm.pml:102 - [requests[tProblem] = (tValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->tProblem), 7) ];
		now.requests[ Index(((P0 *)_this)->tProblem, 7) ] = (((P0 *)_this)->tValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:tProblem]", now.requests[ Index(((int)((P0 *)_this)->tProblem), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 81 - hm.pml:103 - [((uValue>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!((((P0 *)_this)->uValue>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 82 - hm.pml:103 - [requests[uProblem] = (uValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->uProblem), 7) ];
		now.requests[ Index(((P0 *)_this)->uProblem, 7) ] = (((P0 *)_this)->uValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:uProblem]", now.requests[ Index(((int)((P0 *)_this)->uProblem), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 87 - hm.pml:104 - [((vValue>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((((P0 *)_this)->vValue>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 88 - hm.pml:104 - [requests[vProblem] = (vValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->vProblem), 7) ];
		now.requests[ Index(((P0 *)_this)->vProblem, 7) ] = (((P0 *)_this)->vValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:vProblem]", now.requests[ Index(((int)((P0 *)_this)->vProblem), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 90 - hm.pml:104 - [(1)] (95:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(95, 92, 95) */
		reached[0][92] = 1;
		;
		/* merge: printf('Set warna merah karena ada konflik di jalur %d\\n',now)(95, 93, 95) */
		reached[0][93] = 1;
		Printf("Set warna merah karena ada konflik di jalur %d\n", ((int)((P0 *)_this)->now));
		/* merge: printf('(%d) akan menunggu jalur konflik\\n',now)(95, 94, 95) */
		reached[0][94] = 1;
		Printf("(%d) akan menunggu jalur konflik\n", ((int)((P0 *)_this)->now));
		_m = 3; goto P999; /* 3 */
	case 114: // STATE 93 - hm.pml:105 - [printf('Set warna merah karena ada konflik di jalur %d\\n',now)] (0:95:0 - 3)
		IfNotBlocked
		reached[0][93] = 1;
		Printf("Set warna merah karena ada konflik di jalur %d\n", ((int)((P0 *)_this)->now));
		/* merge: printf('(%d) akan menunggu jalur konflik\\n',now)(95, 94, 95) */
		reached[0][94] = 1;
		Printf("(%d) akan menunggu jalur konflik\n", ((int)((P0 *)_this)->now));
		_m = 3; goto P999; /* 1 */
	case 115: // STATE 97 - hm.pml:109 - [printf('Set warna hijau karena (%d) adalah MAX\\n',now)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		Printf("Set warna hijau karena (%d) adalah MAX\n", ((int)((P0 *)_this)->now));
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 98 - hm.pml:110 - [statuses[(now-1)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		(trpt+1)->bup.oval = ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]);
		now.statuses[ Index((((P0 *)_this)->now-1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLight:now-1)]", ((int)now.statuses[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 99 - hm.pml:111 - [queue[(now-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]);
		now.queue[ Index((((P0 *)_this)->now-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("queue[(TrafficLight:now-1)]", ((int)now.queue[ Index((((int)((P0 *)_this)->now)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 100 - hm.pml:112 - [requests[now] = (999+now)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][100] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->now), 7) ];
		now.requests[ Index(((P0 *)_this)->now, 7) ] = (999+((int)((P0 *)_this)->now));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:now]", now.requests[ Index(((int)((P0 *)_this)->now), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 103 - hm.pml:115 - [printf('Permintaan: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\\n',requests[1],requests[2],requests[3],requests[4],requests[5],requests[6])] (0:107:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		Printf("Permintaan: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", now.requests[1], now.requests[2], now.requests[3], now.requests[4], now.requests[5], now.requests[6]);
		/* merge: printf('Status: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\\n',statuses[0],statuses[1],statuses[2],statuses[3],statuses[4],statuses[5])(107, 104, 107) */
		reached[0][104] = 1;
		Printf("Status: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", ((int)now.statuses[0]), ((int)now.statuses[1]), ((int)now.statuses[2]), ((int)now.statuses[3]), ((int)now.statuses[4]), ((int)now.statuses[5]));
		/* merge: printf('Antrian mobil: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\\n',queue[0],queue[1],queue[2],queue[3],queue[4],queue[5])(107, 105, 107) */
		reached[0][105] = 1;
		Printf("Antrian mobil: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", ((int)now.queue[0]), ((int)now.queue[1]), ((int)now.queue[2]), ((int)now.queue[3]), ((int)now.queue[4]), ((int)now.queue[5]));
		_m = 3; goto P999; /* 2 */
	case 120: // STATE 107 - hm.pml:119 - [currentTurn = next] (0:0:1 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P0 *)_this)->next);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 108 - hm.pml:120 - [requests[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		(trpt+1)->bup.oval = now.requests[0];
		now.requests[0] = 0;
#ifdef VAR_RANGES
		logval("requests[0]", now.requests[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 112 - hm.pml:124 - [requests[now] = now] (0:0:1 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->now), 7) ];
		now.requests[ Index(((P0 *)_this)->now, 7) ] = ((int)((P0 *)_this)->now);
#ifdef VAR_RANGES
		logval("requests[TrafficLight:now]", now.requests[ Index(((int)((P0 *)_this)->now), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 113 - hm.pml:125 - [currentTurn = next] (0:0:1 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P0 *)_this)->next);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 121 - hm.pml:129 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][121] = 1;
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

