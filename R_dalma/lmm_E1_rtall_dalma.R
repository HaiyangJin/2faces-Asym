library(lme4)
library(lmerTest)
library(optimx)
library(tictoc)
tic()

# load the data
load("df_lmm_E1.RData")

######### zcp model #########
# message("Fitting glmm_E1_rtall_zcp...")
# glmm_E1_rtall_zcp <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment +
#         (Cue_C + Con_C + Ali_C +
#              Cue_Con + Cue_Ali + Con_Ali +
#              Cue_Con_Ali || Participant),
#     data = df_lmm_E1,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E1_rtall_zcp, file = "E1_rtall_lmm_zcp.RData")
# message("zcp for rt is finished.")


######### etd model #########
# message("Fitting glmm_E1_rtall_etd...")
# glmm_E1_rtall_etd <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment +
#         (Cue_C + Con_C + Ali_C +
#              Cue_Con + Cue_Ali + Con_Ali +
#              Cue_Con_Ali | Participant),
#     data = df_lmm_E1,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E1_rtall_etd, file = "E1_rtall_lmm_etd.RData")
# message("etd for rt is finished.")


######### etd1 model #########
# message("Fitting glmm_E1_rtall_etd1...")
# glmm_E1_rtall_etd1 <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment +  
#         (Cue_C + # Con_C + Ali_C + 
#              Cue_Ali + Con_Ali + # Cue_Con + 
#              Cue_Con_Ali | Participant),
#     data = df_lmm_E1,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E1_rtall_etd1, file = "E1_rtall_lmm_etd1.RData")
# message("etd1 for rt is finished.")

######### etd2 model #########
# message("Fitting glmm_E1_rtall_etd2...")
# glmm_E1_rtall_etd2 <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment +  
#         (Cue_C + # Con_C + Ali_C + 
#              # Cue_Con + Cue_Ali + Con_Ali + 
#              Cue_Con_Ali | Participant),
#     data = df_lmm_E1,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E1_rtall_etd2, file = "E1_rtall_lmm_etd2.RData")
# message("etd2 for rt is finished.")


######### emmeans #########
# library(emmeans)
# load("E1_rtall_lmm_zcp.RData")
# glmm_E1_rtall_opt <- glmm_E1_rtall_zcp
# emm_E1_rtall <- emmeans(glmm_E1_rtall_opt, ~ Cue + Congruency + Alignment)
# save(emm_E1_rtall, file = "E1_rtall_emm.RData")

toc()
