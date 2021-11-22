/*

-------------------------------------------------------------------------
PROJECT: cae_1904_schdpadspd
AUTHOR : Center for Airline Economics
---------------------------------------------------------------------------

Eufrásio, A. B. R., Eller, R. A., & Oliveira, A. V. M. (2021). Are on-time performance statistics worthless? An empirical study of the flight scheduling strategies of Brazilian airlines. Transportation Research Part E: Logistics and Transportation Review, 145, 102186.

https://doi.org/10.1016/j.tre.2020.102186

*/

*import from github
copy https://github.com/avmoliveira/cae_1904_schdpadspd/raw/main/cae_1904_schdpadspd.zip cae_1904_schdpadspd.zip
unzipfile cae_1904_schdpadspd.zip
import delimited "cae_1904_schdpadspd.csv", case(preserve) clear
tsset k t

*Eufrásio, Eller & Oliveira (2021), Page 11 - Table 3 - Column (4).
xtivreg2 EXTBLTIME_5 lag_FUELP lag_DENS lag_FREQ lag_ASIZE lag_RWYCONG lag_SLOTPR lag_HHI lag_LCCS T T_QUALREG T_SLOTREG T_ATMREG lag_CASCDEL lag_UNC lag_RWY_UNC sairc_A30B sairc_A318 sairc_A319 sairc_A320 sairc_A321 sairc_A332 sairc_AT43 sairc_AT45 sairc_AT72 sairc_B703 sairc_B721 sairc_B722 sairc_B732 sairc_B733 sairc_B734 sairc_B735 sairc_B737 sairc_B738 sairc_B752 sairc_B763 sairc_B772 sairc_B77W sairc_C208 sairc_DC10 sairc_DC86 sairc_DC87 sairc_E110 sairc_E120 sairc_E145 sairc_E170 sairc_E190 sairc_F100 sairc_F27 sairc_F50 sairc_L410 sairc_MD11 fe_dirso_9 fe_dirso_17 fe_dirso_21 fe_dirso_29 fe_dirso_44 fe_dirso_51 fe_dirso_57 fe_dirso_59 fe_dirso_60 fe_dirso_61 fe_dirso_63 fe_dirso_65 fe_dirso_81 fe_dirso_85 fe_dirso_103 fe_dirso_109 fe_dirso_111 fe_dirso_117 fe_dirso_119 fe_dirso_129 fe_dirsd_1 fe_dirsd_5 fe_dirsd_13 fe_dirsd_25 fe_dirsd_33 fe_dirsd_35 fe_dirsd_39 fe_dirsd_41 fe_dirsd_43 fe_dirsd_44 fe_dirsd_60 fe_dirsd_69 fe_dirsd_77 fe_dirsd_93 fe_dirsd_105 fe_dirsd_107 fe_dirsd_111 fe_dirsd_113 fe_dirsd_115 fe_dirsd_141 pres_j_amg pres_j_azu pres_j_brb pres_j_glo pres_j_itb pres_j_msq pres_j_nes pres_j_nhg pres_j_nra pres_j_one pres_j_pam pres_j_pep pres_j_ply pres_j_ptb pres_j_ptn pres_j_rle pres_j_rsl pres_j_slx pres_j_tam pres_j_tba pres_j_tib pres_j_tim pres_j_tsd pres_j_ttl pres_j_tvj pres_j_vrg pres_j_vrn pres_j_vsp pres_j_web, fe bw(4) rob

*Eufrásio, Eller & Oliveira (2021), Page 12 - Table 4 - Column (4).
xtivreg2 ODDSDEL DENS FREQ ASIZE RWYCONG SLOTPR (HHI LCCS = Zgrpop Zmaxpop Zmingpc Zgini_o Zgini_d Zginipr_d Zminbkag Zlag_FUELP Zlag_RWYCONG Zlag_SLOTPR) T T_QUALREG T_SLOTREG T_ATMREG CASCDEL EXTBLTIME_5 EXT5_RWYCONG EXT5_SLOTPR EXT5_CASCDEL sairc_A30B sairc_A318 sairc_A319 sairc_A320 sairc_A321 sairc_A332 sairc_AT43 sairc_AT45 sairc_AT72 sairc_B703 sairc_B721 sairc_B722 sairc_B732 sairc_B733 sairc_B734 sairc_B735 sairc_B737 sairc_B738 sairc_B752 sairc_B762 sairc_B763 sairc_B772 sairc_C208 sairc_DC10 sairc_DC86 sairc_E110 sairc_E120 sairc_E145 sairc_E170 sairc_E190 sairc_F100 sairc_F27 sairc_F50 sairc_L410 sairc_MD11 fe_dirso_2 fe_dirso_3 fe_dirso_11 fe_dirso_18 fe_dirso_19 fe_dirso_22 fe_dirso_23 fe_dirso_41 fe_dirso_46 fe_dirso_50 fe_dirso_58 fe_dirso_59 fe_dirso_62 fe_dirso_63 fe_dirso_67 fe_dirso_86 fe_dirso_98 fe_dirso_102 fe_dirso_105 fe_dirso_110 fe_dirso_111 fe_dirso_118 fe_dirso_119 fe_dirso_122 fe_dirso_131 fe_dirso_143 fe_dirsd_7 fe_dirsd_14 fe_dirsd_15 fe_dirsd_27 fe_dirsd_30 fe_dirsd_31 fe_dirsd_34 fe_dirsd_35 fe_dirsd_38 fe_dirsd_41 fe_dirsd_42 fe_dirsd_54 fe_dirsd_55 fe_dirsd_57 fe_dirsd_58 fe_dirsd_95 fe_dirsd_98 fe_dirsd_106 fe_dirsd_107 fe_dirsd_110 fe_dirsd_114 fe_dirsd_118 fe_dirsd_122 fe_dirsd_131 fe_dirsd_143 pres_j_amg pres_j_azu pres_j_brb pres_j_fyw pres_j_glo pres_j_itb pres_j_msq pres_j_nes pres_j_nhg pres_j_nra pres_j_one pres_j_pam pres_j_pep pres_j_ply pres_j_ptb pres_j_ptn pres_j_rle pres_j_rsl pres_j_slx pres_j_tam pres_j_tba pres_j_tib pres_j_tim pres_j_tsd pres_j_ttl pres_j_tvj pres_j_vrg pres_j_vrn pres_j_vsp pres_j_web, fe gmm2s bw(4) rob


/*

Thank you for your interest in our research.
Regards,
Alessandro V.M. Oliveira

*/