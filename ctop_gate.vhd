
library IEEE,lsi_10k;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_textio.all;
use lsi_10k.COMPONENTS.all;

package CONV_PACK_CTOP is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_CTOP;

library IEEE,lsi_10k;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_textio.all;
use lsi_10k.COMPONENTS.all;

use work.CONV_PACK_CTOP.all;

entity recei is

   port( RRC, MR, RRI, SFD, RRD, DRR, CRL : in std_logic;  CTRLWORD : in 
         std_logic_vector (0 to 4);  OE, PE, FE, DR : out std_logic;  RBR : out
         std_logic_vector (0 to 7));

end recei;

architecture SYN of recei is

   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVAP
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BTS4P
      port( A, E : in std_logic;  Z : out std_logic);
   end component;
   
   component LD1P
      port( D, G : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD1P
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FDS2LP
      port( D, CP, CR, LD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component IVA
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component LD4P
      port( D, GN, CD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component HA1P
      port( A, B : in std_logic;  S, CO : out std_logic);
   end component;
   
   signal cnt161007_3_port, cnt16_0_port, recei_reg1033_10_port, n15, n1015, 
      pe_sig, n_501, cnt16_2_port, cnt161007_1_port, recei_reg1033_5_port, 
      recei_reg_3_port, ctrl_word_2_port, dr_sig, recei_reg_7_port, 
      recei_reg1033_1_port, recei_reg1033_8_port, ctrl_word_4_port, 
      recei_reg1033_3_port, recei_reg_5_port, recei_reg_8_port, n_520, 
      recei_reg_1_port, recei_reg_10_port, recei_reg1033_7_port, sum1990_1_port
      , recei_reg_9_port, recei_reg_0_port, recei_reg_11_port, ctrl_word_1_port
      , recei_reg1033_6_port, rx_empty1014, rri_temp, recei_reg1033_2_port, 
      recei_reg_4_port, rx_empty, recei_reg_6_port, recei_reg1033_0_port, n_519
      , n1034_0_port, recei_reg1033_9_port, ctrl_word_3_port, 
      recei_reg1033_4_port, sum1990_2_port, recei_reg_2_port, cnt16_3_port, 
      n_518, cnt161007_0_port, n1050, dr_sig1049, oe_sig, cnt161007_2_port, 
      cnt16_1_port, recei_reg1033_11_port, n2792, n2793, n2794, n2795, n2796, 
      n2797, n2798, n2799, n2800, n2801, n2802, n2803, n2804, n2805, n2806, 
      n2807, n2808, n2809, n2810, n2811, n2812, n2813, n2814, n2815, n2816, 
      n2817, n2818, n2819, n2820, n2821, n2822, n2823, n2824, n2825, n2826, 
      n2827, n2828, n2829, n2830, n2831, n2832, n2833, n2834, n2835, n2836, 
      n2837, n2838, n2839, n2840, n2841, n2842, n2843, n2844, n2845, n2846, 
      n2847, n2848, n2849, n2850, n2851, n2852, n2853, n2854, n2855, n2856, 
      n2857, n2858, n2859, n2860, n2861, n2862, n2863, n2864, n2865, n2866, 
      n2867, n2868, n2869, n2870, n2871, n2872, n2873, n2874, n2875, n2876, 
      n2877, n2878, n2879, n2880, n2881, n2882, n2883, n2884, n2885, n2886, 
      n2887, n2888, n2889, n2890, n2891, n2892, n2893, n2894, n2895, n2896, 
      n2897, n2898, n2899, n2900, n2901, n2902, n2903, n2904, n2905, n2906, 
      n2907, n2908, n2909, n2910, n2911, n2912, n2913, n2914, n2915, n2916, 
      n2917, n2918, n2919, n2920, n2921, n2922, n2923, n2924, n2925, n2926, 
      n2927, n2928, n2929, n2930, n2931, n2932, n2933, n2934, n2935, n2936, 
      n2937, n2938, n2939, n2940, n2941, r139_carry_2_port, r139_carry_3_port, 
      X_cell_500_U35_Z_0, n2942, n2943, n2944, n2945, n2946, n2947, n2948, 
      n2949, n2950, n2951, n2952, n2953, n2954, n2955, n2956, n2957, n2958, 
      n2959, n2960, n2961, n2962, n2963, n2964, n2965 : std_logic;

begin
   
   n2792 <= '0';
   U935 : AO4 port map( A => n2793, B => n2794, C => n2795, D => n2796, Z => 
                           n2921);
   U936 : AO3 port map( A => n2797, B => n2798, C => n2799, D => n2800, Z => 
                           n2917);
   U937 : AO3 port map( A => n2798, B => n2801, C => n2802, D => n2803, Z => 
                           n2924);
   U938 : AO3 port map( A => n2797, B => n2804, C => n2805, D => n2806, Z => 
                           n2925);
   U939 : AO3 port map( A => n2797, B => n2807, C => n2808, D => n2809, Z => 
                           n2915);
   U940 : AO3 port map( A => n2797, B => n2810, C => n2811, D => n2812, Z => 
                           n2920);
   U941 : AO3 port map( A => n2797, B => n2813, C => n2814, D => n2815, Z => 
                           n2919);
   U942 : AO4 port map( A => n2793, B => n2798, C => n2816, D => n2817, Z => 
                           n2918);
   U943 : ND2 port map( A => n2818, B => n2819, Z => n1034_0_port);
   U944 : NR2 port map( A => ctrl_word_1_port, B => n2820, Z => 
                           X_cell_500_U35_Z_0);
   U945 : AO3 port map( A => n2821, B => n2822, C => n2939, D => n2823, Z => 
                           rx_empty1014);
   U946 : AO3 port map( A => n2821, B => n2822, C => n2818, D => n2823, Z => 
                           n1015);
   U947 : AO6 port map( A => n2823, B => n2824, C => n2825, Z => dr_sig1049);
   U948 : AO7 port map( A => n2826, B => n2793, C => n2827, Z => n1050);
   U949 : NR2 port map( A => n2828, B => n2829, Z => cnt161007_3_port);
   U950 : NR2 port map( A => n2830, B => n2828, Z => cnt161007_2_port);
   U951 : NR2 port map( A => n2831, B => n2828, Z => cnt161007_1_port);
   U952 : NR2 port map( A => cnt16_0_port, B => n2828, Z => cnt161007_0_port);
   U953 : ND2 port map( A => n2818, B => n2832, Z => recei_reg1033_11_port);
   U954 : ND2 port map( A => n2818, B => n_501, Z => recei_reg1033_10_port);
   U955 : ND2 port map( A => n2818, B => n2833, Z => recei_reg1033_9_port);
   U956 : ND2 port map( A => n2818, B => n2834, Z => recei_reg1033_8_port);
   U957 : ND2 port map( A => n2818, B => n2794, Z => recei_reg1033_7_port);
   U958 : ND2 port map( A => n2818, B => n2798, Z => recei_reg1033_6_port);
   U959 : ND2 port map( A => n2818, B => n2810, Z => recei_reg1033_5_port);
   U960 : ND2 port map( A => n2818, B => n2813, Z => recei_reg1033_4_port);
   U961 : ND2 port map( A => n2818, B => n2804, Z => recei_reg1033_3_port);
   U962 : ND2 port map( A => n2818, B => n2807, Z => recei_reg1033_2_port);
   U963 : ND2 port map( A => n2818, B => n2835, Z => recei_reg1033_1_port);
   U964 : ND2 port map( A => n2818, B => n2836, Z => recei_reg1033_0_port);
   U965 : IV port map( A => RRD, Z => n2922);
   U966 : IV port map( A => SFD, Z => n2923);
   U967 : NR2 port map( A => n2837, B => n2838, Z => n2916);
   U968 : IV port map( A => DRR, Z => n2825);
   U969 : NR3 port map( A => n2825, B => recei_reg_0_port, C => n2839, Z => 
                           n2826);
   U970 : AN3 port map( A => DRR, B => n2841, C => n2804, Z => n2840);
   U971 : AN3 port map( A => DRR, B => n2835, C => n2843, Z => n2842);
   U972 : NR2 port map( A => n2844, B => n2845, Z => n2821);
   U973 : ND4 port map( A => cnt16_0_port, B => cnt16_1_port, C => cnt16_2_port
                           , D => cnt16_3_port, Z => n2846);
   U974 : AO2 port map( A => recei_reg_10_port, B => n2847, C => 
                           recei_reg_9_port, D => n2848, Z => n2795);
   U975 : AO6 port map( A => recei_reg_8_port, B => n2849, C => n2850, Z => 
                           n2816);
   U976 : AO2 port map( A => n2852, B => n2817, C => n2853, D => 
                           ctrl_word_4_port, Z => n2851);
   U977 : AO4 port map( A => ctrl_word_1_port, B => ctrl_word_2_port, C => 
                           n2854, D => n2855, Z => n2848);
   U978 : NR2 port map( A => n2856, B => n15, Z => n2818);
   U979 : EN port map( A => r139_carry_3_port, B => cnt16_3_port, Z => n2829);
   U980 : AO2 port map( A => n2822, B => ctrl_word_3_port, C => n2852, D => 
                           n2857, Z => n2849);
   U981 : AO4 port map( A => n2822, B => ctrl_word_3_port, C => n2853, D => 
                           n2857, Z => n2858);
   U982 : IV port map( A => ctrl_word_4_port, Z => n2817);
   U983 : ND2 port map( A => ctrl_word_2_port, B => n2854, Z => n2852);
   U984 : ND2 port map( A => ctrl_word_4_port, B => n2857, Z => n2859);
   U985 : ND2 port map( A => n2836, B => n2861, Z => n2860);
   U986 : IV port map( A => ctrl_word_1_port, Z => n2854);
   U987 : ND2 port map( A => ctrl_word_1_port, B => n2855, Z => n2853);
   U988 : NR2 port map( A => n2853, B => ctrl_word_4_port, Z => n2862);
   U989 : ND2 port map( A => n2862, B => n2857, Z => n2863);
   U990 : ND2 port map( A => n2861, B => n2813, Z => n2864);
   U991 : IV port map( A => ctrl_word_3_port, Z => n2857);
   U992 : ND2 port map( A => ctrl_word_3_port, B => ctrl_word_4_port, Z => 
                           n2796);
   U993 : NR2 port map( A => n2796, B => n2852, Z => n2865);
   U994 : NR2 port map( A => rx_empty, B => recei_reg_0_port, Z => n2839);
   U995 : ND2 port map( A => n2861, B => n2807, Z => n2866);
   U996 : ND2 port map( A => n2804, B => n2861, Z => n2841);
   U997 : ND2 port map( A => n2861, B => n2835, Z => n2843);
   U998 : ND2 port map( A => n2857, B => n2817, Z => n2867);
   U999 : ND2 port map( A => ctrl_word_3_port, B => n2817, Z => n2868);
   U1000 : AO1 port map( A => n2865, B => n2839, C => n2869, D => n2870, Z => 
                           n2823);
   U1001 : IV port map( A => recei_reg_10_port, Z => n2833);
   U1002 : IV port map( A => recei_reg_9_port, Z => n2834);
   U1003 : IV port map( A => recei_reg_8_port, Z => n2794);
   U1004 : IV port map( A => recei_reg_7_port, Z => n2798);
   U1005 : IV port map( A => recei_reg_6_port, Z => n2810);
   U1006 : IV port map( A => recei_reg_5_port, Z => n2813);
   U1007 : IV port map( A => recei_reg_4_port, Z => n2804);
   U1008 : IV port map( A => recei_reg_3_port, Z => n2807);
   U1009 : ND4 port map( A => cnt16_2_port, B => cnt16_1_port, C => n2871, D =>
                           cnt16_0_port, Z => n2819);
   U1010 : ND2 port map( A => ctrl_word_4_port, B => n2849, Z => n2801);
   U1011 : ND2 port map( A => n2858, B => n2817, Z => n2872);
   U1012 : IV port map( A => dr_sig, Z => n2837);
   U1013 : NR2 port map( A => n2874, B => n2866, Z => n2873);
   U1014 : AO4 port map( A => n2874, B => n2843, C => n2876, D => n2841, Z => 
                           n2875);
   U1015 : AN3 port map( A => DRR, B => n2860, C => n2836, Z => n2877);
   U1016 : AN3 port map( A => DRR, B => n2807, C => n2866, Z => n2878);
   U1017 : NR2 port map( A => n2840, B => n2822, Z => n2879);
   U1018 : AO4 port map( A => n2842, B => n2822, C => n2877, D => n2852, Z => 
                           n2880);
   U1019 : AO7 port map( A => n2842, B => n2874, C => n2882, Z => n2881);
   U1020 : ND2 port map( A => n2884, B => n2885, Z => n2883);
   U1021 : AO2 port map( A => n_501, B => n2855, C => n_520, D => 
                           ctrl_word_2_port, Z => n2838);
   U1022 : EO port map( A => n2886, B => n2887, Z => n2820);
   U1023 : OR2 port map( A => n2852, B => n2859, Z => n2888);
   U1024 : AO4 port map( A => n2888, B => n2860, C => n2864, D => n2863, Z => 
                           n2870);
   U1025 : AO2 port map( A => n2862, B => n2889, C => n2851, D => n2890, Z => 
                           n2884);
   U1026 : AO2 port map( A => n2891, B => n2848, C => n2862, D => n2892, Z => 
                           n2882);
   U1027 : NR2 port map( A => rx_empty, B => cnt16_3_port, Z => n2871);
   U1028 : AO4 port map( A => n2866, B => n2868, C => n2841, D => n2867, Z => 
                           n2844);
   U1029 : AO4 port map( A => n2859, B => n2843, C => n2860, D => n2796, Z => 
                           n2845);
   U1030 : ND2 port map( A => n2847, B => n2857, Z => n2893);
   U1031 : EON1 port map( A => n2833, B => n2893, C => n2858, D => 
                           recei_reg_9_port, Z => n2850);
   U1032 : NR2 port map( A => n2876, B => n2857, Z => n2894);
   U1033 : AO2 port map( A => n2894, B => recei_reg_10_port, C => 
                           recei_reg_9_port, D => n2895, Z => n2802);
   U1034 : AO2 port map( A => recei_reg_6_port, B => n2865, C => 
                           recei_reg_8_port, D => n2896, Z => n2803);
   U1035 : AO4 port map( A => n2863, B => n2833, C => n2834, D => n2872, Z => 
                           n2897);
   U1036 : AO6 port map( A => n2898, B => recei_reg_6_port, C => n2897, Z => 
                           n2800);
   U1037 : AO2 port map( A => recei_reg_5_port, B => n2865, C => 
                           recei_reg_8_port, D => n2899, Z => n2799);
   U1038 : AO4 port map( A => n2863, B => n2834, C => n2794, D => n2872, Z => 
                           n2900);
   U1039 : AO6 port map( A => n2898, B => recei_reg_5_port, C => n2900, Z => 
                           n2812);
   U1040 : AO2 port map( A => recei_reg_4_port, B => n2865, C => 
                           recei_reg_7_port, D => n2899, Z => n2811);
   U1041 : AO4 port map( A => n2863, B => n2794, C => n2798, D => n2872, Z => 
                           n2901);
   U1042 : AO6 port map( A => n2898, B => recei_reg_4_port, C => n2901, Z => 
                           n2815);
   U1043 : AO2 port map( A => recei_reg_3_port, B => n2865, C => 
                           recei_reg_6_port, D => n2899, Z => n2814);
   U1044 : AO4 port map( A => n2863, B => n2798, C => n2810, D => n2872, Z => 
                           n2902);
   U1045 : AO6 port map( A => n2898, B => recei_reg_3_port, C => n2902, Z => 
                           n2806);
   U1046 : AO2 port map( A => recei_reg_2_port, B => n2865, C => 
                           recei_reg_5_port, D => n2899, Z => n2805);
   U1047 : AO4 port map( A => n2863, B => n2810, C => n2813, D => n2872, Z => 
                           n2903);
   U1048 : AO6 port map( A => n2898, B => recei_reg_2_port, C => n2903, Z => 
                           n2809);
   U1049 : AO2 port map( A => recei_reg_1_port, B => n2865, C => 
                           recei_reg_4_port, D => n2899, Z => n2808);
   U1050 : EO port map( A => n2905, B => n2918, Z => n2904);
   U1051 : EO port map( A => n2915, B => n2907, Z => n2906);
   U1052 : EO port map( A => n2920, B => n2926, Z => n2908);
   U1053 : EN port map( A => n2919, B => n2908, Z => n2886);
   U1054 : NR2 port map( A => n2861, B => rri_temp, Z => n15);
   U1055 : IV port map( A => n2865, Z => n2793);
   U1056 : IV port map( A => n2862, Z => n2876);
   U1057 : OR2 port map( A => n2822, B => n2868, Z => n2909);
   U1058 : IV port map( A => n2853, Z => n2847);
   U1059 : IV port map( A => n2801, Z => n2898);
   U1060 : ND3 port map( A => n2813, B => n2864, C => DRR, Z => n2889);
   U1061 : ND3 port map( A => n2807, B => n2866, C => DRR, Z => n2890);
   U1062 : ND3 port map( A => n2841, B => n2804, C => DRR, Z => n2892);
   U1063 : AO7 port map( A => n2844, B => n2845, C => n2848, Z => n2824);
   U1064 : AO2 port map( A => n2818, B => n2910, C => n2911, D => n2846, Z => 
                           n2828);
   U1065 : AO4 port map( A => n2874, B => n2857, C => n2859, D => n2822, Z => 
                           n2896);
   U1066 : IV port map( A => n2896, Z => n2797);
   U1067 : AO7 port map( A => n2859, B => n2853, C => n2909, Z => n2895);
   U1068 : AO7 port map( A => ctrl_word_3_port, B => n2874, C => n2909, Z => 
                           n2899);
   U1069 : IV port map( A => n2848, Z => n2822);
   U1070 : EO port map( A => n2904, B => n2925, Z => n2912);
   U1071 : IV port map( A => n2851, Z => n2874);
   U1072 : AO2 port map( A => n2875, B => ctrl_word_3_port, C => n2873, D => 
                           n2857, Z => n2913);
   U1073 : AO2 port map( A => n2878, B => n2817, C => n2877, D => 
                           ctrl_word_4_port, Z => n2891);
   U1074 : AO2 port map( A => n2879, B => n2817, C => n2880, D => 
                           ctrl_word_4_port, Z => n2885);
   U1075 : AO2 port map( A => n2883, B => n2857, C => n2881, D => 
                           ctrl_word_3_port, Z => n2827);
   U1076 : AO2 port map( A => n2833, B => n2855, C => n2834, D => 
                           ctrl_word_2_port, Z => n2907);
   U1077 : EN port map( A => n2924, B => n2921, Z => n2905);
   U1078 : EO port map( A => n2906, B => n2917, Z => n2914);
   U1079 : EN port map( A => n2914, B => n2912, Z => n2887);
   U1080 : IV port map( A => rx_empty, Z => n2861);
   U1081 : IV port map( A => recei_reg_2_port, Z => n2835);
   U1082 : IV port map( A => recei_reg_1_port, Z => n2836);
   U1083 : IV port map( A => sum1990_2_port, Z => n2830);
   U1084 : IV port map( A => sum1990_1_port, Z => n2831);
   U1085 : IV port map( A => rri_temp, Z => n2832);
   U1086 : IV port map( A => n2819, Z => n2910);
   U1087 : IV port map( A => n1034_0_port, Z => n2911);
   U1088 : IV port map( A => n2939, Z => n2856);
   U1089 : IV port map( A => ctrl_word_2_port, Z => n2855);
   U1090 : IV port map( A => n2913, Z => n2869);
   S_4 : IVAP port map( A => recei_reg_11_port, Z => n_501);
   S_11 : OR2 port map( A => n_518, B => n_519, Z => n_520);
   RBR_tri_0_label : BTS4P port map( A => n2915, E => n2922, Z => RBR(7));
   OE_tri : BTS4P port map( A => oe_sig, E => n2923, Z => OE);
   FE_tri : BTS4P port map( A => n2916, E => n2923, Z => FE);
   RBR_tri_4_label : BTS4P port map( A => n2917, E => n2922, Z => RBR(3));
   RBR_tri_6_label : BTS4P port map( A => n2918, E => n2922, Z => RBR(1));
   RBR_tri_2_label : BTS4P port map( A => n2919, E => n2922, Z => RBR(5));
   DR_tri : BTS4P port map( A => dr_sig, E => n2923, Z => DR);
   RBR_tri_3_label : BTS4P port map( A => n2920, E => n2922, Z => RBR(4));
   RBR_tri_7_label : BTS4P port map( A => n2921, E => n2922, Z => RBR(0));
   PE_tri : BTS4P port map( A => pe_sig, E => n2923, Z => PE);
   RBR_tri_5_label : BTS4P port map( A => n2924, E => n2922, Z => RBR(2));
   RBR_tri_1_label : BTS4P port map( A => n2925, E => n2922, Z => RBR(6));
   ctrl_word_reg_4_label : LD1P port map( D => CTRLWORD(0), G => CRL, Q => 
                           ctrl_word_4_port, QN => n2942);
   ctrl_word_reg_3_label : LD1P port map( D => CTRLWORD(1), G => CRL, Q => 
                           ctrl_word_3_port, QN => n2943);
   ctrl_word_reg_2_label : LD1P port map( D => CTRLWORD(2), G => CRL, Q => 
                           ctrl_word_2_port, QN => n2944);
   ctrl_word_reg_1_label : LD1P port map( D => CTRLWORD(3), G => CRL, Q => 
                           ctrl_word_1_port, QN => n2945);
   ctrl_word_reg_0_label : LD1P port map( D => CTRLWORD(4), G => CRL, Q => 
                           n2946, QN => n2926);
   cnt16_reg_0_label : FD1P port map( D => cnt161007_0_port, CP => RRC, Q => 
                           cnt16_0_port, QN => n2947);
   cnt16_reg_1_label : FD1P port map( D => cnt161007_1_port, CP => RRC, Q => 
                           cnt16_1_port, QN => n2948);
   cnt16_reg_2_label : FD1P port map( D => cnt161007_2_port, CP => RRC, Q => 
                           cnt16_2_port, QN => n2949);
   cnt16_reg_3_label : FD1P port map( D => cnt161007_3_port, CP => RRC, Q => 
                           cnt16_3_port, QN => n2950);
   recei_reg_reg_11_label : FDS2LP port map( D => recei_reg1033_11_port, CP => 
                           RRC, CR => n2927, LD => n1034_0_port, Q => 
                           recei_reg_11_port, QN => n_518);
   n2927 <= '1';
   recei_reg_reg_10_label : FDS2LP port map( D => recei_reg1033_10_port, CP => 
                           RRC, CR => n2928, LD => n1034_0_port, Q => 
                           recei_reg_10_port, QN => n_519);
   n2928 <= '1';
   recei_reg_reg_9_label : FDS2LP port map( D => recei_reg1033_9_port, CP => 
                           RRC, CR => n2929, LD => n1034_0_port, Q => 
                           recei_reg_9_port, QN => n2951);
   n2929 <= '1';
   recei_reg_reg_8_label : FDS2LP port map( D => recei_reg1033_8_port, CP => 
                           RRC, CR => n2930, LD => n1034_0_port, Q => 
                           recei_reg_8_port, QN => n2952);
   n2930 <= '1';
   recei_reg_reg_7_label : FDS2LP port map( D => recei_reg1033_7_port, CP => 
                           RRC, CR => n2931, LD => n1034_0_port, Q => 
                           recei_reg_7_port, QN => n2953);
   n2931 <= '1';
   recei_reg_reg_6_label : FDS2LP port map( D => recei_reg1033_6_port, CP => 
                           RRC, CR => n2932, LD => n1034_0_port, Q => 
                           recei_reg_6_port, QN => n2954);
   n2932 <= '1';
   recei_reg_reg_5_label : FDS2LP port map( D => recei_reg1033_5_port, CP => 
                           RRC, CR => n2933, LD => n1034_0_port, Q => 
                           recei_reg_5_port, QN => n2955);
   n2933 <= '1';
   recei_reg_reg_4_label : FDS2LP port map( D => recei_reg1033_4_port, CP => 
                           RRC, CR => n2934, LD => n1034_0_port, Q => 
                           recei_reg_4_port, QN => n2956);
   n2934 <= '1';
   recei_reg_reg_3_label : FDS2LP port map( D => recei_reg1033_3_port, CP => 
                           RRC, CR => n2935, LD => n1034_0_port, Q => 
                           recei_reg_3_port, QN => n2957);
   n2935 <= '1';
   recei_reg_reg_2_label : FDS2LP port map( D => recei_reg1033_2_port, CP => 
                           RRC, CR => n2936, LD => n1034_0_port, Q => 
                           recei_reg_2_port, QN => n2958);
   n2936 <= '1';
   recei_reg_reg_1_label : FDS2LP port map( D => recei_reg1033_1_port, CP => 
                           RRC, CR => n2937, LD => n1034_0_port, Q => 
                           recei_reg_1_port, QN => n2959);
   n2937 <= '1';
   recei_reg_reg_0_label : FDS2LP port map( D => recei_reg1033_0_port, CP => 
                           RRC, CR => n2938, LD => n1034_0_port, Q => 
                           recei_reg_0_port, QN => n2960);
   n2938 <= '1';
   rri_temp_reg : FD1P port map( D => RRI, CP => RRC, Q => rri_temp, QN => 
                           n2961);
   oe_sig_reg : FDS2LP port map( D => dr_sig, CP => RRC, CR => n2939, LD => n15
                           , Q => oe_sig, QN => n2962);
   U1103 : IVA port map( A => MR, Z => n2939);
   pe_sig_reg : LD4P port map( D => X_cell_500_U35_Z_0, GN => n2792, CD => 
                           dr_sig, Q => pe_sig, QN => n2963);
   dr_sig_reg : FDS2LP port map( D => dr_sig1049, CP => RRC, CR => n2940, LD =>
                           n1050, Q => dr_sig, QN => n2964);
   n2940 <= '1';
   rx_empty_reg : FDS2LP port map( D => rx_empty1014, CP => RRC, CR => n2941, 
                           LD => n1015, Q => rx_empty, QN => n2965);
   n2941 <= '1';
   r139_U1_1_2 : HA1P port map( A => cnt16_2_port, B => r139_carry_2_port, S =>
                           sum1990_2_port, CO => r139_carry_3_port);
   r139_U1_1_1 : HA1P port map( A => cnt16_1_port, B => cnt16_0_port, S => 
                           sum1990_1_port, CO => r139_carry_2_port);

end SYN;

library IEEE,lsi_10k;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_textio.all;
use lsi_10k.COMPONENTS.all;

use work.CONV_PACK_CTOP.all;

entity trans is

   port( TRC, MR, TBRL, SFD, CRL : in std_logic;  CTRLWORD : in 
         std_logic_vector (0 to 4);  TBR : in std_logic_vector (0 to 7);  TRE, 
         TBRE, TRO : out std_logic);

end trans;

architecture SYN of trans is

   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EO1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component BTS4P
      port( A, E : in std_logic;  Z : out std_logic);
   end component;
   
   component LD1P
      port( D, G : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component LD2P
      port( D, GN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FDS2LP
      port( D, CP, CR, LD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD1P
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FJK1P
      port( J, K, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component LD4P
      port( D, GN, CD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component IVA
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component HA1P
      port( A, B : in std_logic;  S, CO : out std_logic);
   end component;
   
   signal sum1616_2_port, temp391, i_2_port, cnt_0_port, cnt_limit1021_3_port, 
      cnt_limit1021_1_port, go, trans_reg903_10_port, i_0_port, cnt_2_port, 
      TBR_sig_2_port, ARG1440_2_port, ctrl_word_2_port, old_tbr_sig745_1_port, 
      TBR_sig157_1_port, trans_reg903_5_port, TBR_sig_6_port, 
      old_tbr_sig745_5_port, trans_reg903_8_port, trans_reg903_1_port, 
      cnt716_3_port, TBR_sig157_5_port, i773_0_port, cnt716_1_port, 
      TBR_sig157_7_port, i773_2_port, trans_reg903_3_port, TBR_sig_4_port, 
      ctrl_word_4_port, old_tbr_sig745_7_port, trans_reg903_7_port, 
      TBR_sig157_3_port, old_tbr_sig745_3_port, TBR_sig_0_port, 
      ctrl_word_0_port, TBRE_Q817, trans_reg903_6_port, TBR_sig157_2_port, 
      old_tbr_sig745_2_port, ARG1440_1_port, TBR_sig_1_port, ctrl_word_1_port, 
      cnt716_0_port, i773_3_port, TBR_sig157_6_port, trans_reg903_2_port, n880,
      n781_3_port, TBR_sig_5_port, old_tbr_sig745_6_port, delay_0_port, n790, 
      old_tbr_sig745_4_port, n746_0_port, trans_reg903_9_port, TBR_sig_7_port, 
      trans_reg903_0_port, cnt716_2_port, TBR_sig157_4_port, i773_1_port, 
      TBR_sig_3_port, ctrl_word_3_port, old_tbr_sig745_0_port, 
      TBR_sig157_0_port, trans_reg903_4_port, sum1616_1_port, TRE897, 
      cnt_limit1021_0_port, i_1_port, cnt_3_port, i_3_port, cnt_1_port, 
      cnt_limit1021_2_port, t_pari, n1900, n1901, n1902, n1903, n1904, n1905, 
      n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, 
      n1916, n1917, n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, 
      n1926, n1927, n1928, n1929, n1930, n1931, n1932, n1933, n1934, n1935, 
      n1936, n1937, n1938, n1939, n1940, n1941, n1942, n1943, n1944, n1945, 
      n1946, n1947, n1948, n1949, n1950, n1951, n1952, n1953, n1954, n1955, 
      n1956, n1957, n1958, n1959, n1960, n1961, n1962, n1963, n1964, n1965, 
      n1966, n1967, n1968, n1969, n1970, n1971, n1972, n1973, n1974, n1975, 
      n1976, n1977, n1978, n1979, n1980, n1981, n1982, n1983, n1984, n1985, 
      n1986, n1987, n1988, n1989, n1990, n1991, n1992, n1993, n1994, n1995, 
      n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003, n2004, n2005, 
      n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013, n2014, n2015, 
      n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023, n2024, n2025, 
      n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033, n2034, n2035, 
      n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043, n2044, n2045, 
      n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053, n2054, n2055, 
      n2056, n2057, n2058, n2059, n2060, n2061, r107_carry_2_port, 
      r107_carry_3_port, P3_add_582_plus_carry_2_port, 
      P3_add_582_plus_carry_3_port, X_cell_399_U32_DATA2_0, 
      X_cell_399_U31_DATA2_0, X_cell_399_U29_DATA2_0, X_cell_399_U11_CONTROL2, 
      n2062, n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, 
      n2072, n2073, n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, 
      n2082, n2083, n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, 
      n2092, n2093, n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, 
      n2102, n2103, n2104, n2105, n2106, n2107, n2108 : std_logic;

begin
   
   U505 : ND4 port map( A => n1900, B => n1901, C => n1902, D => n1903, Z => 
                           cnt_limit1021_3_port);
   U506 : ND3 port map( A => n1904, B => n1905, C => n1906, Z => 
                           cnt_limit1021_1_port);
   U507 : NR2 port map( A => n1908, B => n1909, Z => n1907);
   U508 : AO7 port map( A => n1910, B => n1911, C => go, Z => cnt716_3_port);
   U509 : ND2 port map( A => go, B => n1912, Z => cnt716_2_port);
   U510 : OR2 port map( A => n1913, B => TBR_sig_7_port, Z => 
                           old_tbr_sig745_7_port);
   U511 : ND2 port map( A => n2060, B => n1914, Z => old_tbr_sig745_6_port);
   U512 : ND2 port map( A => n2060, B => n1915, Z => old_tbr_sig745_5_port);
   U513 : OR2 port map( A => n1913, B => TBR_sig_4_port, Z => 
                           old_tbr_sig745_4_port);
   U514 : OR2 port map( A => n1913, B => TBR_sig_3_port, Z => 
                           old_tbr_sig745_3_port);
   U515 : OR2 port map( A => n1913, B => TBR_sig_2_port, Z => 
                           old_tbr_sig745_2_port);
   U516 : OR2 port map( A => n1913, B => TBR_sig_1_port, Z => 
                           old_tbr_sig745_1_port);
   U517 : OR2 port map( A => n1913, B => TBR_sig_0_port, Z => 
                           old_tbr_sig745_0_port);
   U518 : AO7 port map( A => n1916, B => n1917, C => n2060, Z => n746_0_port);
   U519 : NR2 port map( A => n1918, B => n1919, Z => i773_3_port);
   U520 : NR2 port map( A => n1920, B => n1919, Z => i773_2_port);
   U521 : NR2 port map( A => n1921, B => n1919, Z => i773_1_port);
   U522 : NR2 port map( A => i_0_port, B => n1919, Z => i773_0_port);
   U523 : NR2 port map( A => n1922, B => n1923, Z => n781_3_port);
   U524 : NR2 port map( A => n1913, B => n1917, Z => n790);
   U525 : OR2 port map( A => n1913, B => TBR(0), Z => TBR_sig157_7_port);
   U526 : OR2 port map( A => n1913, B => TBR(1), Z => TBR_sig157_6_port);
   U527 : OR2 port map( A => n1913, B => TBR(2), Z => TBR_sig157_5_port);
   U528 : OR2 port map( A => n1913, B => TBR(3), Z => TBR_sig157_4_port);
   U529 : OR2 port map( A => n1913, B => TBR(4), Z => TBR_sig157_3_port);
   U530 : OR2 port map( A => n1913, B => TBR(5), Z => TBR_sig157_2_port);
   U531 : OR2 port map( A => n1913, B => TBR(6), Z => TBR_sig157_1_port);
   U532 : OR2 port map( A => n1913, B => TBR(7), Z => TBR_sig157_0_port);
   U533 : ND2 port map( A => n1925, B => TRE897, Z => X_cell_399_U29_DATA2_0);
   U534 : NR2 port map( A => cnt_0_port, B => n1910, Z => cnt716_0_port);
   U535 : ND2 port map( A => n1926, B => n1927, Z => TRE897);
   U536 : ND3 port map( A => n2035, B => n1916, C => n1926, Z => 
                           trans_reg903_10_port);
   U537 : AO3 port map( A => n2037, B => n1924, C => n1928, D => n1929, Z => 
                           trans_reg903_9_port);
   U538 : AO3 port map( A => n1924, B => n2039, C => n1930, D => n1929, Z => 
                           trans_reg903_8_port);
   U539 : AO3 port map( A => n1924, B => n2041, C => n1926, D => n1931, Z => 
                           trans_reg903_7_port);
   U540 : AO3 port map( A => n1924, B => n2043, C => n1926, D => n1932, Z => 
                           trans_reg903_6_port);
   U541 : AO3 port map( A => n1924, B => n2045, C => n1926, D => n1933, Z => 
                           trans_reg903_5_port);
   U542 : AO3 port map( A => n1924, B => n2047, C => n1926, D => n1934, Z => 
                           trans_reg903_4_port);
   U543 : AO3 port map( A => n1924, B => n2049, C => n1926, D => n1935, Z => 
                           trans_reg903_3_port);
   U544 : AO3 port map( A => n1924, B => n2051, C => n1926, D => n1936, Z => 
                           trans_reg903_2_port);
   U545 : AO3 port map( A => n1924, B => n2053, C => n1926, D => n1937, Z => 
                           trans_reg903_1_port);
   U546 : AO3 port map( A => n1924, B => n2055, C => n1938, D => n1926, Z => 
                           trans_reg903_0_port);
   U547 : AN2 port map( A => TBRL, B => n2060, Z => n2061);
   U548 : AN3 port map( A => n1940, B => n1941, C => n1942, Z => n1939);
   U549 : ND4 port map( A => n1943, B => n1944, C => n1945, D => n1946, Z => 
                           n1927);
   U550 : NR2 port map( A => n1948, B => n1927, Z => n1947);
   U551 : OR4 port map( A => n1922, B => cnt716_1_port, C => cnt716_2_port, D 
                           => cnt716_3_port, Z => X_cell_399_U11_CONTROL2);
   U552 : EN port map( A => P3_add_582_plus_carry_3_port, B => i_3_port, Z => 
                           n1918);
   U553 : EN port map( A => r107_carry_3_port, B => cnt_3_port, Z => n1911);
   U554 : ND4 port map( A => delay_0_port, B => n1949, C => go, D => n1950, Z 
                           => n1916);
   U555 : ND2 port map( A => go, B => n1925, Z => n1951);
   U556 : ND2 port map( A => n1926, B => n1916, Z => n1924);
   U557 : IV port map( A => ctrl_word_2_port, Z => n1952);
   U558 : IV port map( A => ctrl_word_4_port, Z => n1953);
   U559 : ND2 port map( A => ctrl_word_4_port, B => ctrl_word_2_port, Z => 
                           n1900);
   U560 : IV port map( A => ctrl_word_3_port, Z => n1954);
   U561 : NR2 port map( A => n1954, B => ctrl_word_4_port, Z => n1955);
   U562 : ND2 port map( A => n1952, B => n1954, Z => n1902);
   U563 : ND2 port map( A => n1957, B => n1953, Z => n1956);
   U564 : IV port map( A => ctrl_word_1_port, Z => n1958);
   U565 : ND2 port map( A => n1955, B => n1952, Z => n1959);
   U566 : ND2 port map( A => n1957, B => ctrl_word_4_port, Z => n1905);
   U567 : OR3 port map( A => n1953, B => ctrl_word_2_port, C => n1954, Z => 
                           n1901);
   U568 : OR3 port map( A => n1961, B => n1962, C => n1963, Z => n1960);
   U569 : NR2 port map( A => n1964, B => n1965, Z => n1940);
   U570 : NR4 port map( A => n1967, B => n1968, C => n1969, D => n1970, Z => 
                           n1966);
   U571 : NR2 port map( A => n1951, B => n1971, Z => n1929);
   U572 : IV port map( A => n2060, Z => n1913);
   U573 : OR3 port map( A => n1973, B => n1974, C => n1975, Z => n1972);
   U574 : IV port map( A => TBR_sig_6_port, Z => n1914);
   U575 : NR2 port map( A => n1913, B => n1916, Z => n1976);
   U576 : NR2 port map( A => n1916, B => n2060, Z => n1971);
   U577 : NR2 port map( A => n1972, B => n1960, Z => n1942);
   U578 : IV port map( A => TBR_sig_5_port, Z => n1915);
   U579 : ND4 port map( A => i_3_port, B => i_2_port, C => i_1_port, D => 
                           i_0_port, Z => n1917);
   U580 : ND2 port map( A => X_cell_399_U32_DATA2_0, B => n2060, Z => n1923);
   U581 : ND2 port map( A => n1978, B => n1901, Z => n1977);
   U582 : ND2 port map( A => n2060, B => n1917, Z => n1919);
   U583 : EO port map( A => n1979, B => n1980, Z => temp391);
   U584 : EN port map( A => cnt_1_port, B => cnt_limit1021_1_port, Z => n1945);
   U585 : EN port map( A => cnt_limit1021_3_port, B => cnt_3_port, Z => n1943);
   U586 : AO7 port map( A => n1952, B => n1954, C => n1902, Z => n1981);
   U587 : OR3 port map( A => n1961, B => n1983, C => n1977, Z => n1982);
   U588 : ND2 port map( A => n1959, B => n1900, Z => n1984);
   U589 : AO2 port map( A => n1947, B => go, C => n1907, D => n1985, Z => 
                           X_cell_399_U31_DATA2_0);
   U590 : NR3 port map( A => cnt_1_port, B => cnt_3_port, C => cnt_2_port, Z =>
                           n1950);
   U591 : NR2 port map( A => n1974, B => n1960, Z => n1986);
   U592 : AO6 port map( A => TBR_sig_7_port, B => n1972, C => n1961, Z => n1987
                           );
   U593 : AO2 port map( A => n1976, B => n1988, C => n1971, D => TBR_sig_7_port
                           , Z => n1931);
   U594 : AO2 port map( A => n1976, B => n1989, C => n1971, D => TBR_sig_6_port
                           , Z => n1932);
   U595 : AO2 port map( A => TBR_sig_4_port, B => n1976, C => TBR_sig_5_port, D
                           => n1971, Z => n1933);
   U596 : AO2 port map( A => TBR_sig_3_port, B => n1976, C => TBR_sig_4_port, D
                           => n1971, Z => n1934);
   U597 : AO2 port map( A => TBR_sig_2_port, B => n1976, C => TBR_sig_3_port, D
                           => n1971, Z => n1935);
   U598 : AO2 port map( A => TBR_sig_1_port, B => n1976, C => TBR_sig_2_port, D
                           => n1971, Z => n1936);
   U599 : AO2 port map( A => TBR_sig_0_port, B => n1976, C => TBR_sig_1_port, D
                           => n1971, Z => n1937);
   U600 : EO port map( A => TBR(5), B => TBR(0), Z => n1990);
   U601 : EO port map( A => TBR(6), B => TBR(7), Z => n1991);
   U602 : EO port map( A => n1990, B => n1991, Z => n1979);
   U603 : EO port map( A => TBR(1), B => TBR(4), Z => n1992);
   U604 : EO port map( A => TBR(2), B => TBR(3), Z => n1993);
   U605 : EO port map( A => n1992, B => n1993, Z => n1980);
   U606 : NR2 port map( A => ctrl_word_0_port, B => n1955, Z => n1903);
   U607 : ND4 port map( A => n1994, B => n1995, C => n1996, D => n1997, Z => 
                           n1908);
   U608 : ND4 port map( A => n1998, B => n1999, C => n2000, D => n2001, Z => 
                           n1909);
   U609 : IV port map( A => cnt_0_port, Z => n1949);
   U610 : NR2 port map( A => n1985, B => delay_0_port, Z => n1948);
   U611 : IV port map( A => n1948, Z => n1925);
   U612 : IV port map( A => n1917, Z => X_cell_399_U32_DATA2_0);
   U613 : AN2 port map( A => sum1616_1_port, B => n2002, Z => cnt716_1_port);
   U614 : IV port map( A => n1916, Z => n2003);
   U615 : AN3 port map( A => n1954, B => n1953, C => ctrl_word_2_port, Z => 
                           n1970);
   U616 : IV port map( A => n1970, Z => n1978);
   U617 : ND2 port map( A => n1955, B => ctrl_word_2_port, Z => n1941);
   U618 : NR2 port map( A => n1900, B => ctrl_word_3_port, Z => n1961);
   U619 : NR2 port map( A => n1954, B => n1900, Z => n1974);
   U620 : IV port map( A => n1974, Z => n1904);
   U621 : NR2 port map( A => n1956, B => ctrl_word_1_port, Z => n1968);
   U622 : NR2 port map( A => n1958, B => n1956, Z => n1967);
   U623 : NR2 port map( A => n1959, B => ctrl_word_1_port, Z => n1964);
   U624 : NR2 port map( A => n1959, B => n1958, Z => n1965);
   U625 : NR2 port map( A => n1905, B => ctrl_word_1_port, Z => n1962);
   U626 : NR2 port map( A => n1905, B => n1958, Z => n1963);
   U627 : NR2 port map( A => n1901, B => ctrl_word_1_port, Z => n1973);
   U628 : NR2 port map( A => n1901, B => n1958, Z => n1975);
   U629 : IV port map( A => n1923, Z => n880);
   U630 : ND4 port map( A => n2005, B => n1966, C => n1986, D => n1940, Z => 
                           n2004);
   U631 : ND2 port map( A => n2003, B => n2004, Z => n1928);
   U632 : ND4 port map( A => n2007, B => n1966, C => n1987, D => n1940, Z => 
                           n2006);
   U633 : ND2 port map( A => n2003, B => n2006, Z => n1930);
   U634 : AO3 port map( A => n1942, B => n1914, C => n1966, D => n2008, Z => 
                           n1988);
   U635 : AO3 port map( A => n1939, B => n1915, C => n1978, D => n2009, Z => 
                           n1989);
   U636 : ND2 port map( A => TBR_sig_0_port, B => n1971, Z => n1938);
   U637 : NR2 port map( A => n1924, B => n1927, Z => n1922);
   U638 : ND2 port map( A => n1916, B => n1924, Z => n2002);
   U639 : IV port map( A => n2002, Z => n1910);
   U640 : ND2 port map( A => sum1616_2_port, B => n2002, Z => n1912);
   U641 : AO2 port map( A => cnt_limit1021_0_port, B => n1949, C => n2010, D =>
                           cnt_0_port, Z => n1946);
   U642 : EN port map( A => cnt_limit1021_2_port, B => cnt_2_port, Z => n1944);
   U643 : EO port map( A => TBR_sig_7_port, B => n2015, Z => n1997);
   U644 : EO1 port map( A => TBR_sig_6_port, B => n2017, C => TBR_sig_6_port, D
                           => n2017, Z => n1996);
   U645 : EO1 port map( A => TBR_sig_5_port, B => n2019, C => TBR_sig_5_port, D
                           => n2019, Z => n1995);
   U646 : EO port map( A => TBR_sig_4_port, B => n2021, Z => n1994);
   U647 : EO port map( A => TBR_sig_3_port, B => n2023, Z => n2001);
   U648 : EO port map( A => TBR_sig_2_port, B => n2025, Z => n2000);
   U649 : EO port map( A => TBR_sig_1_port, B => n2027, Z => n1999);
   U650 : EO port map( A => TBR_sig_0_port, B => n2029, Z => n1998);
   U651 : AO2 port map( A => n1973, B => n2011, C => n1975, D => t_pari, Z => 
                           n2005);
   U652 : AO2 port map( A => n1962, B => n2011, C => n1963, D => t_pari, Z => 
                           n2007);
   U653 : AO2 port map( A => n1964, B => n2011, C => n1965, D => t_pari, Z => 
                           n2008);
   U654 : AO2 port map( A => n1968, B => n2011, C => n1967, D => t_pari, Z => 
                           n2009);
   U655 : AO2 port map( A => n1982, B => n2012, C => n1981, D => 
                           ctrl_word_0_port, Z => n2010);
   U656 : AO2 port map( A => n1977, B => n2012, C => n1984, D => 
                           ctrl_word_0_port, Z => n1906);
   U657 : AO2 port map( A => n1978, B => n2012, C => n1901, D => 
                           ctrl_word_0_port, Z => cnt_limit1021_2_port);
   U658 : IV port map( A => n1941, Z => n1969);
   U659 : IV port map( A => n1951, Z => n1926);
   U660 : IV port map( A => n1902, Z => n1957);
   U661 : IV port map( A => n1959, Z => n1983);
   U662 : IV port map( A => ARG1440_2_port, Z => n1920);
   U663 : IV port map( A => ARG1440_1_port, Z => n1921);
   U664 : IV port map( A => go, Z => n1985);
   U665 : IV port map( A => t_pari, Z => n2011);
   U666 : IV port map( A => ctrl_word_0_port, Z => n2012);
   U667 : IV port map( A => n2010, Z => cnt_limit1021_0_port);
   TBRE_tri : BTS4P port map( A => TBRE_Q817, E => n2013, Z => TBRE);
   ctrl_word_reg_4_label : LD1P port map( D => CTRLWORD(0), G => CRL, Q => 
                           ctrl_word_4_port, QN => n2062);
   ctrl_word_reg_3_label : LD1P port map( D => CTRLWORD(1), G => CRL, Q => 
                           ctrl_word_3_port, QN => n2063);
   ctrl_word_reg_2_label : LD1P port map( D => CTRLWORD(2), G => CRL, Q => 
                           ctrl_word_2_port, QN => n2064);
   ctrl_word_reg_1_label : LD1P port map( D => CTRLWORD(3), G => CRL, Q => 
                           ctrl_word_1_port, QN => n2065);
   ctrl_word_reg_0_label : LD1P port map( D => CTRLWORD(4), G => CRL, Q => 
                           ctrl_word_0_port, QN => n2066);
   TBR_sig_reg_7_label : LD2P port map( D => TBR_sig157_7_port, GN => n2061, Q 
                           => TBR_sig_7_port, QN => n2067);
   TBR_sig_reg_6_label : LD2P port map( D => TBR_sig157_6_port, GN => n2061, Q 
                           => TBR_sig_6_port, QN => n2068);
   TBR_sig_reg_5_label : LD2P port map( D => TBR_sig157_5_port, GN => n2061, Q 
                           => TBR_sig_5_port, QN => n2069);
   TBR_sig_reg_4_label : LD2P port map( D => TBR_sig157_4_port, GN => n2061, Q 
                           => TBR_sig_4_port, QN => n2070);
   TBR_sig_reg_3_label : LD2P port map( D => TBR_sig157_3_port, GN => n2061, Q 
                           => TBR_sig_3_port, QN => n2071);
   TBR_sig_reg_2_label : LD2P port map( D => TBR_sig157_2_port, GN => n2061, Q 
                           => TBR_sig_2_port, QN => n2072);
   TBR_sig_reg_1_label : LD2P port map( D => TBR_sig157_1_port, GN => n2061, Q 
                           => TBR_sig_1_port, QN => n2073);
   TBR_sig_reg_0_label : LD2P port map( D => TBR_sig157_0_port, GN => n2061, Q 
                           => TBR_sig_0_port, QN => n2074);
   old_tbr_sig_reg_7_label : FDS2LP port map( D => old_tbr_sig745_7_port, CP =>
                           TRC, CR => n2014, LD => n746_0_port, Q => n2075, QN 
                           => n2015);
   n2014 <= '1';
   old_tbr_sig_reg_6_label : FDS2LP port map( D => old_tbr_sig745_6_port, CP =>
                           TRC, CR => n2016, LD => n746_0_port, Q => n2076, QN 
                           => n2017);
   n2016 <= '1';
   old_tbr_sig_reg_5_label : FDS2LP port map( D => old_tbr_sig745_5_port, CP =>
                           TRC, CR => n2018, LD => n746_0_port, Q => n2077, QN 
                           => n2019);
   n2018 <= '1';
   old_tbr_sig_reg_4_label : FDS2LP port map( D => old_tbr_sig745_4_port, CP =>
                           TRC, CR => n2020, LD => n746_0_port, Q => n2078, QN 
                           => n2021);
   n2020 <= '1';
   old_tbr_sig_reg_3_label : FDS2LP port map( D => old_tbr_sig745_3_port, CP =>
                           TRC, CR => n2022, LD => n746_0_port, Q => n2079, QN 
                           => n2023);
   n2022 <= '1';
   old_tbr_sig_reg_2_label : FDS2LP port map( D => old_tbr_sig745_2_port, CP =>
                           TRC, CR => n2024, LD => n746_0_port, Q => n2080, QN 
                           => n2025);
   n2024 <= '1';
   old_tbr_sig_reg_1_label : FDS2LP port map( D => old_tbr_sig745_1_port, CP =>
                           TRC, CR => n2026, LD => n746_0_port, Q => n2081, QN 
                           => n2027);
   n2026 <= '1';
   old_tbr_sig_reg_0_label : FDS2LP port map( D => old_tbr_sig745_0_port, CP =>
                           TRC, CR => n2028, LD => n746_0_port, Q => n2082, QN 
                           => n2029);
   n2028 <= '1';
   i_reg_3_label : FD1P port map( D => i773_3_port, CP => TRC, Q => i_3_port, 
                           QN => n2083);
   i_reg_2_label : FD1P port map( D => i773_2_port, CP => TRC, Q => i_2_port, 
                           QN => n2084);
   i_reg_1_label : FD1P port map( D => i773_1_port, CP => TRC, Q => i_1_port, 
                           QN => n2085);
   i_reg_0_label : FD1P port map( D => i773_0_port, CP => TRC, Q => i_0_port, 
                           QN => n2086);
   cnt_reg_0_label : FDS2LP port map( D => cnt716_0_port, CP => TRC, CR => 
                           n2030, LD => n781_3_port, Q => cnt_0_port, QN => 
                           n2087);
   n2030 <= '1';
   cnt_reg_1_label : FDS2LP port map( D => cnt716_1_port, CP => TRC, CR => 
                           n2031, LD => n781_3_port, Q => cnt_1_port, QN => 
                           n2088);
   n2031 <= '1';
   cnt_reg_2_label : FDS2LP port map( D => cnt716_2_port, CP => TRC, CR => 
                           n2032, LD => n781_3_port, Q => cnt_2_port, QN => 
                           n2089);
   n2032 <= '1';
   cnt_reg_3_label : FDS2LP port map( D => cnt716_3_port, CP => TRC, CR => 
                           n2033, LD => n781_3_port, Q => cnt_3_port, QN => 
                           n2090);
   n2033 <= '1';
   trans_reg_reg_11_label : FJK1P port map( J => n880, K => n2034, CP => TRC, Q
                           => n2091, QN => n2035);
   n2034 <= '0';
   trans_reg_reg_10_label : FDS2LP port map( D => trans_reg903_10_port, CP => 
                           TRC, CR => n2036, LD => n880, Q => n2092, QN => 
                           n2037);
   n2036 <= '1';
   trans_reg_reg_9_label : FDS2LP port map( D => trans_reg903_9_port, CP => TRC
                           , CR => n2038, LD => n880, Q => n2093, QN => n2039);
   n2038 <= '1';
   trans_reg_reg_8_label : FDS2LP port map( D => trans_reg903_8_port, CP => TRC
                           , CR => n2040, LD => n880, Q => n2094, QN => n2041);
   n2040 <= '1';
   trans_reg_reg_7_label : FDS2LP port map( D => trans_reg903_7_port, CP => TRC
                           , CR => n2042, LD => n880, Q => n2095, QN => n2043);
   n2042 <= '1';
   trans_reg_reg_6_label : FDS2LP port map( D => trans_reg903_6_port, CP => TRC
                           , CR => n2044, LD => n880, Q => n2096, QN => n2045);
   n2044 <= '1';
   trans_reg_reg_5_label : FDS2LP port map( D => trans_reg903_5_port, CP => TRC
                           , CR => n2046, LD => n880, Q => n2097, QN => n2047);
   n2046 <= '1';
   trans_reg_reg_4_label : FDS2LP port map( D => trans_reg903_4_port, CP => TRC
                           , CR => n2048, LD => n880, Q => n2098, QN => n2049);
   n2048 <= '1';
   trans_reg_reg_3_label : FDS2LP port map( D => trans_reg903_3_port, CP => TRC
                           , CR => n2050, LD => n880, Q => n2099, QN => n2051);
   n2050 <= '1';
   trans_reg_reg_2_label : FDS2LP port map( D => trans_reg903_2_port, CP => TRC
                           , CR => n2052, LD => n880, Q => n2100, QN => n2053);
   n2052 <= '1';
   trans_reg_reg_1_label : FDS2LP port map( D => trans_reg903_1_port, CP => TRC
                           , CR => n2054, LD => n880, Q => n2101, QN => n2055);
   n2054 <= '1';
   trans_reg_reg_0_label : FDS2LP port map( D => trans_reg903_0_port, CP => TRC
                           , CR => n2056, LD => n880, Q => TRO, QN => n2102);
   n2056 <= '1';
   go_reg : FDS2LP port map( D => X_cell_399_U31_DATA2_0, CP => TRC, CR => 
                           n2060, LD => X_cell_399_U32_DATA2_0, Q => go, QN => 
                           n2103);
   TBRE_tri_enable_reg : FDS2LP port map( D => SFD, CP => TRC, CR => n2057, LD 
                           => n880, Q => n2104, QN => n2013);
   n2057 <= '1';
   TBRE_reg : FDS2LP port map( D => X_cell_399_U11_CONTROL2, CP => TRC, CR => 
                           n2058, LD => n880, Q => TBRE_Q817, QN => n2105);
   n2058 <= '1';
   TRE_reg : FDS2LP port map( D => TRE897, CP => TRC, CR => n2059, LD => n790, 
                           Q => TRE, QN => n2106);
   n2059 <= '1';
   delay_reg_0_label : FDS2LP port map( D => X_cell_399_U29_DATA2_0, CP => TRC,
                           CR => n2060, LD => X_cell_399_U32_DATA2_0, Q => 
                           delay_0_port, QN => n2107);
   t_pari_reg : LD4P port map( D => temp391, GN => TBRL, CD => n2060, Q => 
                           t_pari, QN => n2108);
   U695 : IVA port map( A => MR, Z => n2060);
   r107_U1_1_2 : HA1P port map( A => cnt_2_port, B => r107_carry_2_port, S => 
                           sum1616_2_port, CO => r107_carry_3_port);
   r107_U1_1_1 : HA1P port map( A => cnt_1_port, B => cnt_0_port, S => 
                           sum1616_1_port, CO => r107_carry_2_port);
   P3_add_582_plus_U1_1_2 : HA1P port map( A => i_2_port, B => 
                           P3_add_582_plus_carry_2_port, S => ARG1440_2_port, 
                           CO => P3_add_582_plus_carry_3_port);
   P3_add_582_plus_U1_1_1 : HA1P port map( A => i_1_port, B => i_0_port, S => 
                           ARG1440_1_port, CO => P3_add_582_plus_carry_2_port);

end SYN;

library IEEE,lsi_10k;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_textio.all;
use lsi_10k.COMPONENTS.all;

use work.CONV_PACK_CTOP.all;

entity CTOP is

   port( TRC_c, MR_c, TBRL_c, SFD_c, CRL_c, RRC_c, RRI_c, RRD_c, DRR_c, CLS2_c,
         CLS1_c, PI_c, EPE_c, SBS_c : in std_logic;  TBR_c : in 
         std_logic_vector (7 downto 0);  TRE_c, TBRE_c, TRO_c, OE_c, PE_c, FE_c
         , DR_c : out std_logic;  RBR_c : out std_logic_vector (7 downto 0));

end CTOP;

architecture SYN of CTOP is

   component recei
      port( RRC, MR, RRI, SFD, RRD, DRR, CRL : in std_logic;  CTRLWORD : in 
            std_logic_vector (0 to 4);  OE, PE, FE, DR : out std_logic;  RBR : 
            out std_logic_vector (0 to 7));
   end component;
   
   component trans
      port( TRC, MR, TBRL, SFD, CRL : in std_logic;  CTRLWORD : in 
            std_logic_vector (0 to 4);  TBR : in std_logic_vector (0 to 7);  
            TRE, TBRE, TRO : out std_logic);
   end component;

begin
   
   U1 : recei port map( RRC => RRC_c, MR => MR_c, RRI => RRI_c, SFD => SFD_c, 
                           RRD => RRD_c, DRR => DRR_c, CRL => CRL_c, 
                           CTRLWORD(0) => CLS2_c, CTRLWORD(1) => CLS1_c, 
                           CTRLWORD(2) => EPE_c, CTRLWORD(3) => SBS_c, 
                           CTRLWORD(4) => PI_c, OE => OE_c, PE => PE_c, FE => 
                           FE_c, DR => DR_c, RBR(0) => RBR_c(7), RBR(1) => 
                           RBR_c(6), RBR(2) => RBR_c(5), RBR(3) => RBR_c(4), 
                           RBR(4) => RBR_c(3), RBR(5) => RBR_c(2), RBR(6) => 
                           RBR_c(1), RBR(7) => RBR_c(0));
   U2 : trans port map( TRC => TRC_c, MR => MR_c, TBRL => TBRL_c, SFD => SFD_c,
                           CRL => CRL_c, CTRLWORD(0) => CLS2_c, CTRLWORD(1) => 
                           CLS1_c, CTRLWORD(2) => PI_c, CTRLWORD(3) => EPE_c, 
                           CTRLWORD(4) => SBS_c, TBR(0) => TBR_c(7), TBR(1) => 
                           TBR_c(6), TBR(2) => TBR_c(5), TBR(3) => TBR_c(4), 
                           TBR(4) => TBR_c(3), TBR(5) => TBR_c(2), TBR(6) => 
                           TBR_c(1), TBR(7) => TBR_c(0), TRE => TRE_c, TBRE => 
                           TBRE_c, TRO => TRO_c);

end SYN;