-- mfd.dbo.cdmCustomer definition

-- Drop table

-- DROP TABLE mfd.dbo.cdmCustomer;

CREATE TABLE cdmCustomer (
				CustomerID int IDENTITY(1,1) NOT NULL,
				SourceID tinyint NOT NULL,
				SourceCustomerID int NOT NULL,
				CUID uniqueidentifier DEFAULT newid() NOT NULL,
				CustomerIDAgg int NULL,
				CustomerIDAggRule int NULL,
				IsCustomer bit DEFAULT 1 NOT NULL,
				StatusCode int DEFAULT 0 NOT NULL,
				Title varchar(50) COLLATE Latin1_General_CI_AS DEFAULT '' NOT NULL,
				TitleCode int NOT NULL,
				FirstName varchar(150) COLLATE Latin1_General_CI_AS NOT NULL,
				FirstNameCode int DEFAULT 0 NOT NULL,
				MiddleName varchar(150) COLLATE Latin1_General_CI_AS NOT NULL,
				MiddleNameCode int NOT NULL,
				NickName varchar(150) COLLATE Latin1_General_CI_AS NOT NULL,
				NickNameCode int NOT NULL,
				LastName varchar(150) COLLATE Latin1_General_CI_AS NOT NULL,
				LastNameCode int DEFAULT 0 NOT NULL,
				Gender varchar(1) COLLATE Latin1_General_CI_AS DEFAULT '' NOT NULL,
				GenderCode int DEFAULT 0 NOT NULL,
				BirthDate date NULL,
				ChannelPrefMarketing varchar(10) COLLATE Latin1_General_CI_AS DEFAULT 'EDM' NOT NULL,
				ChannelPrefReminder varchar(10) COLLATE Latin1_General_CI_AS DEFAULT 'EDM' NOT NULL,
				Email varchar(250) COLLATE Latin1_General_CI_AS NOT NULL,
				EmailCode int NOT NULL,
				EmailDeliveryCode int DEFAULT 0 NOT NULL,
				EmailPodCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				EmailPhysCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				EmailAppointmentRemindersOptIn bit DEFAULT 1 NOT NULL,
				EmailPodRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				EmailPhysRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				EmailPodClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				EmailPhysClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				Mobile varchar(20) COLLATE Latin1_General_CI_AS NOT NULL,
				MobileCode int NOT NULL,
				MobileDeliveryCode int DEFAULT 0 NOT NULL,
				MobilePodCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobilePhysCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileAppointmentRemindersOptIn bit DEFAULT 1 NOT NULL,
				MobilePodRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobilePhysRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobilePodClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobilePhysClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileTelephonePodCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileTelephonePhysCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileTelephoneAppointmentRemindersOptIn bit DEFAULT 1 NOT NULL,
				MobileTelephonePodRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileTelephonePhysRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileTelephonePodClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				MobileTelephonePhysClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				HomePhone varchar(20) COLLATE Latin1_General_CI_AS NOT NULL,
				HomePhoneCode int NOT NULL,
				HomePhoneDeliveryCode int DEFAULT 0 NOT NULL,
				HomePhonePodCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				HomePhonePhysCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				HomePhoneAppointmentRemindersOptIn bit DEFAULT 1 NOT NULL,
				HomePhonePodRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				HomePhonePhysRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				HomePhonePodClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				HomePhonePhysClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				WorkPhone varchar(20) COLLATE Latin1_General_CI_AS NOT NULL,
				WorkPhoneCode int NOT NULL,
				WorkPhoneDeliveryCode int DEFAULT 0 NOT NULL,
				WorkPhonePodCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				WorkPhonePhysCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				WorkPhoneAppointmentRemindersOptIn bit DEFAULT 1 NOT NULL,
				WorkPhonePodRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				WorkPhonePhysRetailMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				WorkPhonePodClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				WorkPhonePhysClinicalRecallsOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				CallbackPhone varchar(50) COLLATE Latin1_General_CI_AS DEFAULT '' NOT NULL,
				CallbackPhoneCode int DEFAULT 0 NOT NULL,
				CallbackPhonePodCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				CallbackPhonePhysCampaignMarketingOptIn_DEPRECATED bit DEFAULT 1 NOT NULL,
				Address1 varchar(250) COLLATE Latin1_General_CI_AS NOT NULL,
				Address1Code int NOT NULL,
				Address2 varchar(250) COLLATE Latin1_General_CI_AS NOT NULL,
				Address2Code int NOT NULL,
				Address3 varchar(250) COLLATE Latin1_General_CI_AS NOT NULL,
				Address3Code int NOT NULL,
				Postcode varchar(20) COLLATE Latin1_General_CI_AS NOT NULL,
				PostcodeCode int NOT NULL,
				Suburb varchar(150) COLLATE Latin1_General_CI_AS NOT NULL,
				SuburbCode int NOT NULL,
				State varchar(50) COLLATE Latin1_General_CI_AS NOT NULL,
				StateCode int NOT NULL,
				Country varchar(50) COLLATE Latin1_General_CI_AS NOT NULL,
				CountryCode int NOT NULL,
				FullAddress varchar(250) COLLATE Latin1_General_CI_AS NULL,
				FullAddressCode int NULL,
				Lat decimal(12,7) NULL,
				Lon decimal(12,7) NULL,
				OnlineCode varchar(50) COLLATE Latin1_General_CI_AS NOT NULL,
				IsChild bit NOT NULL,
				Notes varchar(MAX) COLLATE Latin1_General_CI_AS NOT NULL,
				Occupation varchar(80) COLLATE Latin1_General_CI_AS NOT NULL,
				Employer varchar(80) COLLATE Latin1_General_CI_AS NOT NULL,
				NookalCategory varchar(80) COLLATE Latin1_General_CI_AS NOT NULL,
				AllowOnlineBookings bit DEFAULT 1 NOT NULL,
				Category varchar(20) COLLATE Latin1_General_CI_AS DEFAULT 'Unknown' NOT NULL,
				PrivateHealthType int NULL,
				PrivateHealthNo varchar(50) COLLATE Latin1_General_CI_AS NULL,
				FirstAppointmentStoreID int NULL,
				FirstAppointmentDate date NULL,
				LastAppointmentStoreID int NULL,
				LastAppointmentDate date NULL,
				LastPractitionerID int NULL,
				NextAppointmentStoreID int NULL,
				NextAppointmentDate date NULL,
				AllBrandsVisited varchar(MAX) COLLATE Latin1_General_CI_AS NULL,
				LastTransactionStoreID int NULL,
				LastTransactionID int NULL,
				LastTransactionDate date NULL,
				LastDVADate date NULL,
				LastDFFDate date NULL,
				LastADFDate date NULL,
				LastNDISDate date NULL,
				LastWCDate date NULL,
				LastTransactionIsWC bit DEFAULT 0 NOT NULL,
				LastOrthoticDate date NULL,
				LastHealthFundDate date NULL,
				TotalVisitsLast12Months int DEFAULT 0 NOT NULL,
				TotalRevenueLast12Months decimal(12,2) DEFAULT 0 NOT NULL,
				LastEmailAddressSentDate date NULL,
				LastEmailAddressOpenDate date NULL,
				LastEmailAddressClickDate date NULL,
				LastSMSAddressSentDate date NULL,
				LastEmailRecipientSentDate date NULL,
				LastEmailRecipientOpenDate date NULL,
				LastEmailRecipientClickDate date NULL,
				LastSMSRecipientSentDate date NULL,
				IsOCCTherapyPatient bit DEFAULT 0 NULL,
				dtmCreated datetime DEFAULT getdate() NOT NULL,
				dtmUpdated datetime DEFAULT getdate() NOT NULL,
				dtmProcessed datetime NULL,
				LastAppointmentWasDNA bit DEFAULT 0 NULL,
				NookalID int NULL,
				nookalDbID varchar(20) COLLATE Latin1_General_CI_AS NULL,
				allNookalIDs varchar(MAX) COLLATE Latin1_General_CI_AS DEFAULT '[]' NOT NULL,
				FirstAppointmentID int NULL,
				BrandID int NULL,
				SCIDID_Brand int NULL,
				SCIDID_Discipline bigint NULL,
				SCIDID_Global int NULL,
				NextAppointmentID int NULL,
				LastAppointmentID int NULL,
				LastTransactionAppointmentID int NULL,
				EmailCampaignMarketingOptIn bit DEFAULT 1 NOT NULL,
				EmailRetailMarketingOptIn bit DEFAULT 1 NOT NULL,
				EmailClinicalRecallsOptIn bit DEFAULT 1 NOT NULL,
				MobileCampaignMarketingOptIn bit DEFAULT 1 NOT NULL,
				MobileRetailMarketingOptIn bit DEFAULT 1 NOT NULL,
				MobileClinicalRecallsOptIn bit DEFAULT 1 NOT NULL,
				MobileTelephoneClinicalRecallsOptIn bit DEFAULT 1 NOT NULL,
				MobileTelephoneRetailMarketingOptIn bit DEFAULT 1 NOT NULL,
				MobileTelephoneCampaignMarketingOptIn bit DEFAULT 1 NOT NULL,
				HomePhoneCampaignMarketingOptIn bit DEFAULT 1 NOT NULL,
				HomePhoneRetailMarketingOptIn bit DEFAULT 1 NOT NULL,
				HomePhoneClinicalRecallsOptin bit DEFAULT 1 NOT NULL,
				WorkPhoneCampaignMarketingOptIn bit DEFAULT 1 NOT NULL,
				WorkPhoneRetailMarketingOptIn bit DEFAULT 1 NOT NULL,
				WorkPhoneClinicalRecallsOptin bit DEFAULT 1 NOT NULL,
				CallbackPhoneCampaignMarketingOptIn bit DEFAULT 1 NOT NULL,
				RegistrationDate datetime NULL,
				TotalVisits int DEFAULT 0 NULL,
				LastOrthoticTransactionID int NULL,
				CONSTRAINT PK_cdmCustomer PRIMARY KEY (CustomerID),
				CONSTRAINT UNQ_cdmCustomer_SourceSystemID_SourceCustomerID UNIQUE (SourceID,SourceCustomerID)
);
 CREATE NONCLUSTERED INDEX IDX_cdmCustomer_CustomerIDAgg ON mfd.dbo.cdmCustomer (  CustomerIDAgg ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX IDX_cdmCustomer_Mobile ON mfd.dbo.cdmCustomer (  Mobile ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX IDX_cdmCustomer_SCIDID_brand ON mfd.dbo.cdmCustomer (  SCIDID_Brand ASC  )  
	 INCLUDE ( CustomerID ) 
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX IDX_cdmCustomer_SCIDID_discipline ON mfd.dbo.cdmCustomer (  SCIDID_Discipline ASC  )  
	 INCLUDE ( CustomerID ) 
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX IDX_cdmCustomer_SCIDID_global ON mfd.dbo.cdmCustomer (  SCIDID_Global ASC  )  
	 INCLUDE ( CustomerID ) 
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_SSMS_suggested ON mfd.dbo.cdmCustomer (  IsCustomer ASC  , Category ASC  )  
	 INCLUDE ( BirthDate , CallbackPhonePhysCampaignMarketingOptIn_DEPRECATED , CustomerID , CustomerIDAgg , EmailPhysCampaignMarketingOptIn_DEPRECATED , EmailPhysRetailMarketingOptIn_DEPRECATED , HomePhonePhysCampaignMarketingOptIn_DEPRECATED , HomePhonePhysRetailMarketingOptIn_DEPRECATED , IsChild , IsOCCTherapyPatient , LastADFDate , LastDFFDate , LastDVADate , LastNDISDate , LastTransactionIsWC , LastWCDate , MobilePhysCampaignMarketingOptIn_DEPRECATED , MobilePhysRetailMarketingOptIn_DEPRECATED , MobileTelephonePhysCampaignMarketingOptIn_DEPRECATED , MobileTelephonePhysRetailMarketingOptIn_DEPRECATED , WorkPhonePhysCampaignMarketingOptIn_DEPRECATED , WorkPhonePhysRetailMarketingOptIn_DEPRECATED ) 
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;