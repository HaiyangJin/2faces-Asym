Raw data files for Experiment 2.

These .xlsx files were directly obtained from Psychtoolbox programs. For the online version of this code-book, please see [the github repository (will update after the review)]() or [here directly (will update after the review)]().

Column name | Description
-- | --
Experiment | experiment name, which also contains the information on the probability of cueing the top parts (75BottomCue: 25% cueing top; 75TopCue: 75% cueing top)
Pariticipant | participant number/code
Age | age of the participant
Gender | gender of the participant
Ethnicity | the ethnicity of the stimuli (2: Chinese faces)
Trial | trial number
Block | blocks separated by breaks
Probability | the probability of cueing the top in the current session; however, due to a bug, it was recorded as 0.25Topcue for all sessions. Please refer to "Experiment" for the cueing top probabilities.
CuedHalf | the target/cued part (T: top; B: bottom)
Congruency | one of the independent variables for the completed composite face task (I: incongruent; C: congruent)
Alignment | one of the independent variables for the completed composite face task (A: aligned; M: misaligned)
SameDifferent | one of the independent variables for the completed composite face task (denoted as Correct Response in the article) (S: same; D: different)
FaceGroup | one of the 10 stimuli sets (more see Methods)
StudyUpper | the filename of the face, which was used as the top half of the study composite face
StudyLower | the filename of the face, which was used as the bottom half of the study composite face
TargetUpper | the filename of the face, which was used as the top half of the test composite face
TargetLower | the filename of the face, which was used as the bottom half of the test composite face
FaceIndex | (auxiliary parameters in programing)
thisResponse | the response made by the participant (S: same; D: different)
isCorrect | whether the response was correct (1: correct; 0: incorrect)
reactionTime | the response time, whose onset was when the test face disappeared
studyDuration | the duration of the study face
targetDuration | the duration of the test face; this column was incorrect due to a bug. The actual duration of the test face was 200ms, which had been fixed in the analysis.
maskDuration | the duration of the mask after the study face
trialEndTime | when the trial finished