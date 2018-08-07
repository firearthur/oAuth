

CREATE TABLE `mbrtypelists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Mbr_type` varchar(255) DEFAULT NULL,
  `Mbr_type_grp` varchar(255) DEFAULT NULL,
  `Mbr_type_rpt_name` varchar(255) DEFAULT NULL,
  `Mbr_type_rpt_name2` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(150) DEFAULT NULL,
  `lastName` varchar(150) DEFAULT NULL,
  `group` varchar(150) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `authorized` boolean DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `availability` boolean DEFAULT 1,
  `reason` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 


USE kp_audit;
CREATE TABLE `medctrlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL,
  `medicalCenter` varchar(255) DEFAULT NULL,
  `abbrv` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

USE kp_audit;
CREATE TABLE `reviewcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Region` varchar(255) DEFAULT NULL,
  `Strareaname` varchar(255) DEFAULT NULL,
  `MRN` varchar(255) DEFAULT NULL,
  `ORIG_CODE` varchar(255) DEFAULT NULL,
  `Aud_Recode` varchar(255) DEFAULT NULL,
  `QA2AudCat` varchar(255) DEFAULT NULL,
  `Appeal` varchar(255) DEFAULT NULL,
  `AppealReason` varchar(255) DEFAULT NULL,
  `AppealDate` datetime DEFAULT NULL,
  `NonProviderIssue` varchar(255) DEFAULT NULL,
  `ErrDesc` varchar(255) DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `aud_comments` varchar(255) DEFAULT NULL,
  `p_random` varchar(255) DEFAULT NULL,
  `Provider_name` varchar(255) DEFAULT NULL,
  `CPM_Id` varchar(255) DEFAULT NULL,
  `mbr_type` varchar(255) DEFAULT NULL,
  `month_desc` varchar(255) DEFAULT NULL,
  `QA2Aud_Outcome` varchar(255) DEFAULT NULL,
  `orig_qty` varchar(255) DEFAULT NULL,
  `QA2Aud_Qty` varchar(255) DEFAULT NULL,
  `codeDesc` varchar(255) DEFAULT NULL,
  `contact_date` datetime DEFAULT NULL,
  `Unit_Discrepancy` varchar(255) DEFAULT NULL,
  `VropiderLOS` varchar(255) DEFAULT NULL,
  `FinalAuditorLOS` varchar(255) DEFAULT NULL,
  `Changes` varchar(255) DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

USE kp_audit;
CREATE TABLE `reviewissuelogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idX` varchar(255) DEFAULT NULL,
  `indexStatus` int(11) DEFAULT NULL,
  `audit_type` varchar(255) DEFAULT NULL,
  `issue_id` varchar(255) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `not_required` varchar(255) DEFAULT NULL,
  `Identified` varchar(255) DEFAULT NULL,
  `discussed` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

USE kp_audit;
CREATE TABLE `reviewstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indexStatus` int(11) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `medicalCenter` varchar(255) DEFAULT NULL,
  `mbr_type` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `reviewType` varchar(255) DEFAULT NULL,
  `CPM_Id` varchar(255) DEFAULT NULL,
  `Provider_name` varchar(255) DEFAULT NULL,
  `CPT_AccuracyRate` varchar(255) DEFAULT NULL,
  `CPT_Audited` varchar(255) DEFAULT NULL,
  `EM_Accuracy` varchar(255) DEFAULT NULL,
  `EM_OneStepAccuracy` varchar(255) DEFAULT NULL,
  `EM_Audited` varchar(255) DEFAULT NULL,
  `ICD_AccuracyRate` varchar(255) DEFAULT NULL,
  `DiagnosisAudited` varchar(255) DEFAULT NULL,
  `CompositeAccuracyRate` varchar(255) DEFAULT NULL,
  `MonthReported` varchar(255) DEFAULT NULL,
  `DateDistributed` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `AuditorAssigned` varchar(255) DEFAULT NULL,
  `DateAuditorAssigned` datetime DEFAULT NULL,
  `FeedbackAuditor` varchar(255) DEFAULT NULL,
  `DateReviewStarts` datetime DEFAULT NULL,
  `DateReviewEnds` datetime DEFAULT NULL,
  `StatusofFB` varchar(255) DEFAULT NULL,
  `AppealsReason` varchar(255) DEFAULT NULL,
  `FBnotProvided` varchar(255) DEFAULT NULL,
  `NumOfAttempt` varchar(255) DEFAULT NULL,
  `FirstFBAttemptDate` datetime DEFAULT NULL,
  `FirstFBAttemptMethod` varchar(255) DEFAULT NULL,
  `EscalationTo` varchar(255) DEFAULT NULL,
  `AuditorAssignedby` varchar(255) DEFAULT NULL,
  `DateFB_Provided` datetime DEFAULT NULL,
  `DateFB_CompletedVariance` datetime DEFAULT NULL,
  `DateOfEscalation` datetime DEFAULT NULL,
  `DateAppeals` datetime DEFAULT NULL,
  `AppealApproved` varchar(255) DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `CountOfEverything` varchar(255) DEFAULT NULL,
  `CountOfComplete` varchar(255) DEFAULT NULL,
  `CountOfIncomplete` varchar(255) DEFAULT NULL,
  `CountOfInProgress` varchar(255) DEFAULT NULL,
  `CountOfAppeal` varchar(255) DEFAULT NULL,
  `BelowThreshold` varchar(255) DEFAULT NULL,
  `FeedbackRequired` varchar(255) DEFAULT NULL,
  `AttemptHistorical` varchar(255) DEFAULT NULL,
  `FB_CompletedReason` varchar(255) DEFAULT NULL,
  `ExtraFour` varchar(255) DEFAULT NULL,
  `Extra5` varchar(255) DEFAULT NULL,
  `Changes` varchar(255) DEFAULT NULL,
  `VarDistToAsgn` varchar(255) DEFAULT NULL,
  `VarAsgnToRevw` varchar(255) DEFAULT NULL,
  `VarAsgntoComp` varchar(255) DEFAULT NULL,
  `VarDistToComp` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

USE kp_audit;
CREATE TABLE `topiclists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuditType` varchar(255) DEFAULT NULL,
  `Topics` varchar(255) DEFAULT NULL,
  `Idx` varchar(255) DEFAULT NULL,
  `Completed` varchar(255) DEFAULT NULL,
  `Active` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
)


