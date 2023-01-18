library(lme4)
library(lmerTest)
library(optimx)
# library(tictoc)
# tic()

# load the data
load("df_lmm_E1_rt.RData")

######### zcp model #########
# message("Fitting lmm_E1_rte_zcp...")
# lmm_E1_rte_zcp <- lmer(
#     RT ~ Cue * Congruency * Alignment +  
#         (Cue_C + Con_C + Ali_C + 
#              Cue_Con + Cue_Ali + Con_Ali + 
#              Cue_Con_Ali || Participant),
#     data = df_lmm_E1_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E1_rte_zcp, file = "E1_rte_lmm_zcp.RData")
# message("zcp for rt is finished.")


# ######### rdc model #########
# message("Fitting lmm_E1_rte_rdc...")
# lmm_E1_rte_rdc <- lmer(
#     RT ~ Cue * Congruency * Alignment +  
#         (Cue_C + Ali_C + # Con_C + 
#              Cue_Con + Cue_Ali + # Con_Ali + 
#              Cue_Con_Ali || Participant),
#     data = df_lmm_E1_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E1_rte_rdc, file = "E1_rte_lmm_rdc.RData")
# message("rdc for rt is finished.")


######### etd model #########
# message("Fitting lmm_E1_rte_etd...")
# lmm_E1_rte_etd <- lmer(
#     RT ~ Cue * Congruency * Alignment +  
#         (Cue_C + Ali_C + # Con_C + 
#              Cue_Con + Cue_Ali + # Con_Ali + 
#              Cue_Con_Ali | Participant),
#     data = df_lmm_E1_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E1_rte_etd, file = "E1_rte_lmm_etd.RData")
# message("etd for rt is finished.")


######### etd1 model #########
# message("Fitting lmm_E1_rte_etd1...")
# lmm_E1_rte_etd1 <- lmer(
#     RT ~ Cue * Congruency * Alignment +  
#         (Cue_C + # Con_C + Ali_C + 
#              Cue_Ali + # Con_Ali + Cue_Con + 
#              Cue_Con_Ali | Participant),
#     data = df_lmm_E1_rt,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(lmm_E1_rte_etd1, file = "E1_rte_lmm_etd1.RData")
# message("etd1 for rt is finished.")


######### emmeans #########
# library(emmeans)
# load("E1_rte_lmm_etd1.RData")
# lmm_E1_rte_opt <- lmm_E1_rte_etd1
# emm_E1_rte <- emmeans(lmm_E1_rte_opt, ~ Cue + Congruency + Alignment)
# save(emm_E1_rte, file = "E1_rte_emm.RData")


######### emmeans for scf #########
# load("df_lmm_rte_scf.RData")
# library(emmeans)
# load("rt_scf_lmm_etd.RData")
# lmm_E1_rte_scf_opt <- lmm_E1_rte_scf_etd
# emm_rte_scf <- emmeans(lmm_E1_rte_scf_opt, ~ Cue + Alignment)
# save(emm_rte_scf, file = "rt_scf_emm.RData")

# toc()
