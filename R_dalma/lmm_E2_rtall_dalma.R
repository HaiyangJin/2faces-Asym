library(lme4)
library(lmerTest)
library(optimx)
library(tictoc)
tic()

# load the data
load("df_lmm_E2.RData")

######### zcp model #########
# message("Fitting glmm_E2_rtall_zcp...")
# glmm_E2_rtall_zcp <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment * Probability +
#         (Cue_C + Con_C + Ali_C +
#              Cue_Con + Cue_Ali + Con_Ali +
#              Cue_Con_Ali +
#              Pro_C +
#              Cue_Pro + Con_Pro + Ali_Pro +
#              Cue_Con_Pro + Cue_Ali_Pro + Con_Ali_Pro +
#              Cue_Con_Ali_Pro || Participant),
#     data = df_lmm_E2,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E2_rtall_zcp, file = "E2_rtall_lmm_zcp.RData")
# message("zcp for rt is finished.")


# ######### rdc model #########
# message("Fitting glmm_E2_rtall_rdc...")
# glmm_E2_rtall_rdc <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment * Probability +  
#         (Cue_C + Ali_C + # Con_C + 
#              Cue_Con + Cue_Ali + # Con_Ali + 
#              # Cue_Con_Ali +
#              Pro_C +
#              Cue_Pro + Con_Pro + # Ali_Pro + 
#              Cue_Con_Pro + Cue_Ali_Pro + Con_Ali_Pro # + 
#          || Participant), # Cue_Con_Ali_Pro
#     data = df_lmm_E2,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E2_rtall_rdc, file = "E2_rtall_lmm_rdc.RData")
# message("rdc for rt is finished.")


######### etd model #########
# message("Fitting glmm_E2_rtall_etd...")
# glmm_E2_rtall_etd <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment * Probability +  
#         (Cue_C + Ali_C + # Con_C + 
#              Cue_Con + Cue_Ali + # Con_Ali + 
#              # Cue_Con_Ali +
#              Pro_C +
#              Cue_Pro + Con_Pro + # Ali_Pro + 
#              Cue_Con_Pro + Cue_Ali_Pro + Con_Ali_Pro # + 
#          | Participant), # Cue_Con_Ali_Pro
#     data = df_lmm_E2,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E2_rtall_etd, file = "E2_rtall_lmm_etd.RData")
# message("etd for rt is finished.")


######### etd1 model #########
# message("Fitting glmm_E2_rtall_etd1...")
# glmm_E2_rtall_etd1 <- lmer(
#     log(RT) ~ Cue * Congruency * Alignment * Probability +  
#         (# Con_C +  Ali_C + Cue_C + 
#             # Con_Ali + Cue_Con + Cue_Ali + 
#             # Cue_Con_Ali +
#             Pro_C +
#                 Cue_Pro + # Ali_Pro + Con_Pro + 
#                 Cue_Ali_Pro + Con_Ali_Pro # + Cue_Con_Pro + 
#             | Participant), # Cue_Con_Ali_Pro
#     data = df_lmm_E2,
#     control = lmerControl(optimizer = "optimx", # calc.derivs = FALSE,
#                           optCtrl = list(method = "nlminb", starttests = FALSE, kkt = FALSE))
# )
# save(glmm_E2_rtall_etd1, file = "E2_rtall_lmm_etd1.RData")
# message("etd1 for rt is finished.")


######### emmeans #########
# library(emmeans)
# load("E2_rtall_lmm_rdc.RData")
# glmm_E2_rtall_opt <- glmm_E2_rtall_rdc
# emm_E2_rtall <- emmeans(glmm_E2_rtall_opt, ~ Cue + Congruency + Alignment + Probability)
# save(emm_E2_rtall, file = "E2_rtall_emm.RData")


toc()
