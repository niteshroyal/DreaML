loanAmount(L) ~ gaussian(149084.825,13179051089.3) := true.
loanStatus(L) ~ finite([Probability1:a,Probability2:b,Probability3:c,Probability4:d]) := findall_forward(Aavn_M,(hasLoan(A_M,L)~=true,avgNrWith(A_M)~=Aavn_M),X_T_9_Temp),avg(X_T_9_Temp)~=X_T_9, softmax([[0.10548419783127183,-0.9477875300034085],[0.07027278113133756,-2.0146240031206006],[-0.07896128916709869,2.477369784073793],[-0.0967956897955138,0.4850417490503521]],[X_T_9],[Probability1,Probability2,Probability3,Probability4]).
loanStatus(L) ~ finite([0.30416666666666664:a,0.5770833333333333:c,0.05416666666666667:b,0.06458333333333334:d]) := true.
monthlyPayments(L) ~ gaussian(Mean,2748230.4594027307) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==a,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_63),maxMod(X_T_63)~=m,findall_forward(Aavn_M,(hasLoan(A_M_1,L)~=true,avgNrWith(A_M_1)~=Aavn_M),X_T_111_Temp),avg(X_T_111_Temp)~=X_T_111,getMean([La_M,X_T_111],[0.02209827296930511,-74.56426351257649,3740.7714786830375],Mean).
monthlyPayments(L) ~ gaussian(Mean,2396154.464813204) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==a,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_64),\+maxMod(X_T_64)~=_,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_154),maxMod(X_T_154)~=f,findall_forward(Aavn_M,(hasLoan(A_M_1,L)~=true,avgNrWith(A_M_1)~=Aavn_M),X_T_172_Temp),avg(X_T_172_Temp)~=X_T_172,getMean([La_M,X_T_172],[0.020891891749636824,-235.69455762024737,6187.645575417357],Mean).
monthlyPayments(L) ~ gaussian(Mean,1181363.645205601) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==c,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_249),maxMod(X_T_249)~=w,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_279),maxMod(X_T_279)~=m,getMean([La_M],[0.010352730911975536,2753.520946050213],Mean).
monthlyPayments(L) ~ gaussian(Mean,862373.7010557783) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==c,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_249),maxMod(X_T_249)~=w,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_280),maxMod(X_T_280)~=f,getMean([La_M],[0.013452907241606405,1750.9847211182841],Mean).
monthlyPayments(L) ~ gaussian(Mean,983084.5205851697) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==c,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_250),maxMod(X_T_250)~=m,findall_forward(Aavn_M,(hasLoan(A_M_1,L)~=true,avgNrWith(A_M_1)~=Aavn_M),X_T_334_Temp),avg(X_T_334_Temp)~=X_T_334,findall_forward(Astdmi_M,(hasLoan(A_M_2,L)~=true,stdMonthInc(A_M_2)~=Astdmi_M),X_T_343_Temp),avg(X_T_343_Temp)~=X_T_343,getMean([La_M,X_T_334,X_T_343],[0.014630712234829188,-94.76800409786591,0.0377639518839743,1440.670686116428],Mean).
monthlyPayments(L) ~ gaussian(Mean,2577993.4548884435) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==c,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_251),\+maxMod(X_T_251)~=_,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_393),maxMod(X_T_393)~=m,getMean([La_M],[0.015042247220932831,1821.2064996807453],Mean).
monthlyPayments(L) ~ gaussian(Mean,1863201.8814237162) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==c,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_251),\+maxMod(X_T_251)~=_,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_394),maxMod(X_T_394)~=f,getMean([La_M],[0.011952288042215379,2292.2936540652317],Mean).
monthlyPayments(L) ~ gaussian(Mean,323857.7471975026) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==c,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_251),\+maxMod(X_T_251)~=_,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_395),\+maxMod(X_T_395)~=_,getMean([La_M],[0.016791499280551257,541.2602977537936],Mean).
monthlyPayments(L) ~ gaussian(Mean,1829867.087391876) := loanAmount(L)~=La_M,loanStatus(L)~=Ls_M,Ls_M==d,findall_forward(Afr_M,(hasLoan(A_M,L)~=true,freq(A_M)~=Afr_M),X_T_464),maxMod(X_T_464)~=m,findall_forward(Ge_M,(clientLoan(C_M,L)~=true,gender(C_M)~=Ge_M),X_T_494),maxMod(X_T_494)~=f,getMean([La_M],[0.01449057738960316,1695.5400064666674],Mean).
monthlyPayments(L) ~ gaussian(4217.78125,4970531.78295) := true.
gender(C) ~ finite([0.505175983436853:m,0.494824016563147:f]) := true.
freq(A) ~ finite([0.032520325203252036:i,0.8211382113821138:m,0.14634146341463414:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_3),maxMod(X_T_3)~=a.
freq(A) ~ finite([0.15:i,0.7:m,0.15:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_4),maxMod(X_T_4)~=b.
freq(A) ~ finite([0.027777777777777776:i,0.8287037037037037:m,0.14351851851851852:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_5),maxMod(X_T_5)~=c.
freq(A) ~ finite([0.037037037037037035:i,0.8888888888888888:m,0.07407407407407407:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_6),maxMod(X_T_6)~=d.
freq(A) ~ finite([0.017211099402880226:i,0.9381805409202669:m,0.04460835967685283:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_7),\+maxMod(X_T_7)~=_.
freq(A) ~ finite([0.019486545004639654:i,0.9245283018867925:m,0.055985153108567894:w]) := true.
avgSumOfInc(A) ~ gaussian(Mean,52454025.64700373) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==i,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_55),\+maxMod(X_T_55)~=_,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_71),maxMod(X_T_71)~=m,avgNrWith(A)~=Aavn_M,getMean([Aavw_M,Astdmi_M,Aavn_M],[0.5596833896057086,1.5387960484502967,1984.1789285061993,-17785.062617184405],Mean).
avgSumOfInc(A) ~ gaussian(Mean,38868250.7654733) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==i,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_55),\+maxMod(X_T_55)~=_,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_72),maxMod(X_T_72)~=f,findall_forward(Ca_M,(hasAccount(C_M_1,A)~=true,age(C_M_1)~=Ca_M),X_T_99),\+avg(X_T_99)~=_,getMean([Aavw_M,Astdmi_M],[0.9457124933243778,0.6724177562357959,-4638.120527178529],Mean).
avgSumOfInc(A) ~ gaussian(Mean,26276525.011619363) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==w,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_110),maxMod(X_T_110)~=c,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_139),maxMod(X_T_139)~=m,getMean([Aavw_M,Astdmi_M],[0.9840664185681843,0.49156612249141685,-2699.256412942501],Mean).
avgSumOfInc(A) ~ gaussian(Mean,43980971.28591602) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==w,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_110),maxMod(X_T_110)~=c,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_140),maxMod(X_T_140)~=f,getMean([Aavw_M,Astdmi_M],[1.058709251829142,0.4579961122126572,-6595.86772463478],Mean).
avgSumOfInc(A) ~ gaussian(Mean,74412718.98910746) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==w,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_112),\+maxMod(X_T_112)~=_,getMean([Aavw_M,Astdmi_M],[0.925544698661882,0.7592951862146383,-3102.3988873255294],Mean).
avgSumOfInc(A) ~ gaussian(Mean,62190153.90515711) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_185_Temp),avg(X_T_185_Temp)~=X_T_185,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_189),maxMod(X_T_189)~=a,getMean([Aavw_M,Astdmi_M,X_T_185],[0.9359982616239555,0.8296500366920792,18.160089887054212,-10367.044009656369],Mean).
avgSumOfInc(A) ~ gaussian(Mean,25592937.73069925) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_185_Temp),avg(X_T_185_Temp)~=X_T_185,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_191),maxMod(X_T_191)~=c,getMean([Aavw_M,Astdmi_M,X_T_185],[1.0055697529522538,0.4594547384296581,71.99202936658449,-5871.083955283742],Mean).
avgSumOfInc(A) ~ gaussian(Mean,58274245.27047634) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_185_Temp),avg(X_T_185_Temp)~=X_T_185,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_192),maxMod(X_T_192)~=d,findall_forward(Ge_M,(hasAccount(C_M_1,A)~=true,gender(C_M_1)~=Ge_M),X_T_235),maxMod(X_T_235)~=f,getMean([Aavw_M,Astdmi_M,X_T_185],[1.2277612163772789,0.0187182652122211,-218.265228045446,2249.294269252263],Mean).
avgSumOfInc(A) ~ gaussian(Mean,34032018.705387376) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_185_Temp),avg(X_T_185_Temp)~=X_T_185,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_193),\+maxMod(X_T_193)~=_,findall_forward(Ge_M,(hasAccount(C_M_1,A)~=true,gender(C_M_1)~=Ge_M),X_T_249),maxMod(X_T_249)~=m,getMean([Aavw_M,Astdmi_M,X_T_185],[0.9749883543837717,0.6089714739061964,32.3738247201043,-6285.552943271701],Mean).
avgSumOfInc(A) ~ gaussian(Mean,25063929.872207373) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_185_Temp),avg(X_T_185_Temp)~=X_T_185,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_193),\+maxMod(X_T_193)~=_,findall_forward(Ge_M,(hasAccount(C_M_1,A)~=true,gender(C_M_1)~=Ge_M),X_T_250),maxMod(X_T_250)~=f,getMean([Aavw_M,Astdmi_M,X_T_185],[0.9382228336357241,0.5672113384095028,-11.461250026845775,-3235.5869100070267],Mean).
avgSumOfInc(A) ~ gaussian(Mean,122370969.12021339) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_185_Temp),avg(X_T_185_Temp)~=X_T_185,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_193),\+maxMod(X_T_193)~=_,findall_forward(Ge_M,(hasAccount(C_M_1,A)~=true,gender(C_M_1)~=Ge_M),X_T_251),\+maxMod(X_T_251)~=_,getMean([Aavw_M,Astdmi_M,X_T_185],[1.2888358429635074,-0.2106956458419785,-249.27348896870524,10366.403510672943],Mean).
avgSumOfInc(A) ~ gaussian(Mean,22889668.98007752) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_186),\+avg(X_T_186)~=_,avgNrWith(A)~=Aavn_M,stdMonthW(A)~=Astdmw_M,getMean([Aavw_M,Astdmi_M,Aavn_M,Astdmw_M],[0.958298067536154,0.37477410863464306,-122.07019630944278,0.18508690615595152,-99.12378990872094],Mean).
avgSumOfInc(A) ~ gaussian(59216.86985,3085664937.37) := true.
stdMonthInc(A) ~ gaussian(Mean,40556427.0211342) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_38_Temp),avg(X_T_38_Temp)~=X_T_38,getMean([Aavw_M,Aavn_M,X_T_38],[0.3351005008537523,-486.87272451008613,15.95103733421817,12928.960479157096],Mean).
stdMonthInc(A) ~ gaussian(Mean,27683295.1269464) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_39),\+avg(X_T_39)~=_,freq(A)~=Afr_M,Afr_M==i,getMean([Aavw_M,Aavn_M],[0.28496848621292226,-176.0418243262663,13093.919140940794],Mean).
stdMonthInc(A) ~ gaussian(Mean,36308970.980629236) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_39),\+avg(X_T_39)~=_,freq(A)~=Afr_M,Afr_M==w,getMean([Aavw_M,Aavn_M],[0.27813076999678576,-63.1618242778533,13283.533407315514],Mean).
stdMonthInc(A) ~ gaussian(Mean,15328882.424938358) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_39),\+avg(X_T_39)~=_,freq(A)~=Afr_M,Afr_M==m,getMean([Aavw_M,Aavn_M],[0.35967002445558044,-404.1210973158393,6439.63161787327],Mean).
stdMonthInc(A) ~ gaussian(20999.1801536,277661191.057) := true.
stdMonthW(A) ~ gaussian(Mean,24302831.949291885) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_25_Temp),avg(X_T_25_Temp)~=X_T_25,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,getMean([Astdmi_M,X_T_25,Aavw_M,Aavn_M],[0.11252714546097237,9.556251241348615,0.25202474105565464,-534.5857757956262,6416.8995421154395],Mean).
stdMonthW(A) ~ gaussian(Mean,18832949.253992137) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_26),\+avg(X_T_26)~=_,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,freq(A)~=Afr_M,Afr_M==i,getMean([Astdmi_M,Aavw_M,Aavn_M],[0.43641406072534195,0.16714487556957192,-475.2293151975996,3093.689598136236],Mean).
stdMonthW(A) ~ gaussian(Mean,34813453.0914696) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_26),\+avg(X_T_26)~=_,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,freq(A)~=Afr_M,Afr_M==w,getMean([Astdmi_M,Aavw_M,Aavn_M],[0.24799309633058814,0.167998389402701,-40.73685041438309,5094.174337722601],Mean).
stdMonthW(A) ~ gaussian(Mean,7587427.929231816) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ca_M,(hasAccount(C_M,A)~=true,age(C_M)~=Ca_M),X_T_26),\+avg(X_T_26)~=_,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,freq(A)~=Afr_M,Afr_M==m,getMean([Astdmi_M,Aavw_M,Aavn_M],[0.448958218534765,0.13841596641157064,-195.48755742520197,1104.397989765308],Mean).
stdMonthW(A) ~ gaussian(15232.2723768,181937485.81) := true.
