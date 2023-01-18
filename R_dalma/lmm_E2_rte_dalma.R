library(lme4)
library(lmerTest)
library(optimx)
# library(tictoc)
# tic()

# load the data
load("df_lmm_E2_rt.RData")

######### zcp model #########
# message("Fitting lmm_E2_rte_zcp...")
# lmm_E2_rte_zcp <- lmer(
#     RT ~ Cue * Congruency * Alignment * Probability +  
#         (Cue_C + Con_C + Ali_C + 
#              Cue_Con + Cue_Ali + Con_Ali + 
#              Cue_Con_Ali +
#              Pro_C +
#              Cue_Pro + Con_Pro + Ali_Pro + 
#              Cue_Con_Pro + Cue_Ali_Pro + Con_Ali_Pro + 
#              Cue_Con_Ali_Pro || Participant),
#     data = df_lmm_E2_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E2_rte_zcp, file = "E2_rte_lmm_zcp.RData")
# message("zcp for rt is finished.")


# ######### rdc model #########
# message("Fitting lmm_E2_rte_rdc...")
# lmm_E2_rte_rdc <- lmer(
#     RT ~ Cue * Congruency * Alignment * Probability +  
#         (Cue_C + Con_C + Ali_C + 
#              Cue_Ali + # Cue_Con + Con_Ali + 
#              Cue_Con_Ali +
#              Pro_C +
#              Cue_Pro + # Con_Pro + Ali_Pro + 
#              Cue_Ali_Pro + Con_Ali_Pro + # Cue_Con_Pro + 
#              Cue_Con_Ali_Pro || Participant),
#     data = df_lmm_E2_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E2_rte_rdc, file = "E2_rte_lmm_rdc.RData")
# message("rdc for rt is finished.")


######### etd model #########
# message("Fitting lmm_E2_rte_etd...")
# lmm_E2_rte_etd <- lmer(
#     RT ~ Cue * Congruency * Alignment * Probability +  
#         (Cue_C + Con_C + Ali_C + 
#              Cue_Ali + # Cue_Con + Con_Ali + 
#              Cue_Con_Ali +
#              Pro_C +
#              Cue_Pro + # Con_Pro + Ali_Pro + 
#              Cue_Ali_Pro + Con_Ali_Pro + # Cue_Con_Pro + 
#              Cue_Con_Ali_Pro | Participant),
#     data = df_lmm_E2_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E2_rte_etd, file = "E2_rte_lmm_etd.RData")
# message("etd for rt is finished.")


######### etd1 model #########
# message("Fitting lmm_E2_rte_etd1...")
# lmm_E2_rte_etd1 <- lmer(
#     RT ~ Cue * Congruency * Alignment * Probability +  
#         (# Cue_C + Con_C + Ali_C + 
#             # Cue_Ali + # Cue_Con + Con_Ali + 
#             # Cue_Con_Ali +
#             Pro_C +
#                 Cue_Pro + # Con_Pro + Ali_Pro + 
#                 Cue_Ali_Pro +  # Con_Ali_Pro + Cue_Con_Pro + 
#                 Cue_Con_Ali_Pro | Participant),
#     data = df_lmm_E2_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E2_rte_etd1, file = "E2_rte_lmm_etd1.RData")
# message("etd1 for rt is finished.")


######### etd2 model #########
# message("Fitting lmm_E2_rte_etd2...")
# lmm_E2_rte_etd2 <- lmer(
#     RT ~ Cue * Congruency * Alignment * Probability +  
#         (# Cue_C + Con_C + Ali_C + 
#             # Cue_Ali + # Cue_Con + Con_Ali + 
#             # Cue_Con_Ali +
#             Pro_C +
#                 Cue_Pro + # Con_Pro + Ali_Pro + 
#                 Cue_Ali_Pro   # +Con_Ali_Pro + Cue_Con_Pro + 
#             | Participant), # Cue_Con_Ali_Pro 
#     data = df_lmm_E2_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E2_rte_etd2, file = "E2_rte_lmm_etd2.RData")
# message("etd2 for rt is finished.")


######### emmeans #########
# library(emmeans)
# load("E2_rte_lmm_rdc.RData")
# lmm_E2_rte_opt <- lmm_E2_rte_rdc
# emm_E2_rte <- emmeans(lmm_E2_rte_opt, ~ Cue + Congruency + Alignment + Probability)
# save(emm_E2_rte, file = "E2_rte_emm.RData")


# toc()
