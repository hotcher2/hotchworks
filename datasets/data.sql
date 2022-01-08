BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Active__c" VARCHAR(255), 
	"CustomerPriority__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NumberofLocations__c" VARCHAR(255), 
	"SLAExpirationDate__c" VARCHAR(255), 
	"SLASerialNumber__c" VARCHAR(255), 
	"SLA__c" VARCHAR(255), 
	"UpsellOpportunity__c" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Yes','Low','GenePoint','1.0','2022-08-03','7324','Bronze','Yes','');
INSERT INTO "Account" VALUES(2,'Yes','High','United Oil & Gas, UK','34.0','2022-01-31','3479','Platinum','No','');
INSERT INTO "Account" VALUES(3,'Yes','High','United Oil & Gas, Singapore','6.0','2022-08-03','2457','Platinum','Maybe','');
INSERT INTO "Account" VALUES(4,'Yes','Medium','Edge Communications','2.0','2022-01-31','2657','Silver','Maybe','');
INSERT INTO "Account" VALUES(5,'','','Burlington Textiles Corp of America','6.0','2022-01-31','5367','Silver','Maybe','');
INSERT INTO "Account" VALUES(6,'Yes','','Pyramid Construction Inc.','17.0','2022-08-03','9840','Silver','Maybe','');
INSERT INTO "Account" VALUES(7,'Yes','Low','Dickenson plc','2.0','2022-08-03','7425','Bronze','No','');
INSERT INTO "Account" VALUES(8,'Yes','High','Grand Hotels & Resorts Ltd','57.0','2022-08-03','5572','Gold','Yes','');
INSERT INTO "Account" VALUES(9,'Yes','Medium','Express Logistics and Transport','150.0','2022-08-03','4724','Platinum','Maybe','');
INSERT INTO "Account" VALUES(10,'Yes','Medium','University of Arizona','3.0','2022-01-31','8350','Gold','Yes','');
INSERT INTO "Account" VALUES(11,'Yes','High','United Oil & Gas Corp.','955.0','2022-08-03','6654','Platinum','Yes','');
INSERT INTO "Account" VALUES(12,'','','sForce','','','','','','');
INSERT INTO "Account" VALUES(13,'','','Sample Account for Entitlements','','','','','','');
CREATE TABLE "Case" (
	id INTEGER NOT NULL, 
	"EngineeringReqNumber__c" VARCHAR(255), 
	"IsEscalated" VARCHAR(255), 
	"PotentialLiability__c" VARCHAR(255), 
	"Product__c" VARCHAR(255), 
	"SLAViolation__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Case" VALUES(1,'767145','False','Yes','GC1060','Yes','11','18','');
INSERT INTO "Case" VALUES(2,'765876','False','No','GC5040','No','4','1','');
INSERT INTO "Case" VALUES(3,'','False','No','GC3060','No','11','8','');
INSERT INTO "Case" VALUES(4,'','False','No','GC1020','No','9','10','');
INSERT INTO "Case" VALUES(5,'784532','False','No','GC5020','No','9','10','');
INSERT INTO "Case" VALUES(6,'653780','False','Yes','GC1060','No','9','11','');
INSERT INTO "Case" VALUES(7,'253574','False','No','GC1020','No','1','17','');
INSERT INTO "Case" VALUES(8,'835735','False','No','GC1040','No','8','6','');
INSERT INTO "Case" VALUES(9,'','False','No','GC1020','No','8','6','');
INSERT INTO "Case" VALUES(10,'365782','False','Yes','GC3040','No','2','14','');
INSERT INTO "Case" VALUES(11,'658733','False','No','GC1060','No','3','15','');
INSERT INTO "Case" VALUES(12,'965884','False','No','GC3020','No','3','16','');
INSERT INTO "Case" VALUES(13,'347209','False','Yes','GC1020','Yes','10','12','');
INSERT INTO "Case" VALUES(14,'654623','False','No','GC5020','No','8','7','');
INSERT INTO "Case" VALUES(15,'','False','Yes','GC3020','No','8','7','');
INSERT INTO "Case" VALUES(16,'354982','False','Yes','GC3060','No','3','16','');
INSERT INTO "Case" VALUES(17,'651375','False','No','GC5020','No','1','17','');
INSERT INTO "Case" VALUES(18,'736734','False','No','GC1040','No','4','2','');
INSERT INTO "Case" VALUES(19,'526714','False','No','GC1040','No','4','2','');
INSERT INTO "Case" VALUES(20,'636265','False','Yes','GC5060','No','5','3','');
INSERT INTO "Case" VALUES(21,'237645','False','Yes','GC3060','No','5','3','');
INSERT INTO "Case" VALUES(22,'435143','False','Yes','GC3060','','11','8','');
INSERT INTO "Case" VALUES(23,'456345','False','No','GC5060','No','11','8','');
INSERT INTO "Case" VALUES(24,'265794','False','No','GC5060','No','11','8','');
INSERT INTO "Case" VALUES(25,'868314','False','No','GC3040','No','11','9','');
INSERT INTO "Case" VALUES(26,'572546','False','No','GC5040','No','11','9','');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"FirstName" VARCHAR(255), 
	"Languages__c" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Level__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'Rose','English','Gonzalez','Primary','4','');
INSERT INTO "Contact" VALUES(2,'Sean','English','Forbes','Secondary','4','');
INSERT INTO "Contact" VALUES(3,'Jack','','Rogers','','5','');
INSERT INTO "Contact" VALUES(4,'Pat','French, English','Stumuller','Primary','6','');
INSERT INTO "Contact" VALUES(5,'Andy','English','Young','Primary','7','');
INSERT INTO "Contact" VALUES(6,'Tim','English','Barr','Secondary','8','');
INSERT INTO "Contact" VALUES(7,'John','English','Bond','Primary','8','');
INSERT INTO "Contact" VALUES(8,'Stella','English','Pavlova','Tertiary','11','');
INSERT INTO "Contact" VALUES(9,'Lauren','English','Boyle','Secondary','11','');
INSERT INTO "Contact" VALUES(10,'Babara','English','Levy','Primary','9','');
INSERT INTO "Contact" VALUES(11,'Josh','English','Davis','Secondary','9','');
INSERT INTO "Contact" VALUES(12,'Jane','English','Grey','Primary','10','');
INSERT INTO "Contact" VALUES(13,'Arthur','English','Song','Secondary','11','');
INSERT INTO "Contact" VALUES(14,'Ashley','English','James','Primary','2','');
INSERT INTO "Contact" VALUES(15,'Tom','English','Ripley','Primary','3','');
INSERT INTO "Contact" VALUES(16,'Liz','English','D''Cruz','Secondary','3','');
INSERT INTO "Contact" VALUES(17,'Edna','English','Frank','Primary','1','');
INSERT INTO "Contact" VALUES(18,'Avi','English','Green','Primary','11','');
INSERT INTO "Contact" VALUES(19,'Siddartha','','Nedaerk','','12','');
INSERT INTO "Contact" VALUES(20,'Jake','','Llorrac','','12','');
CREATE TABLE "Lead" (
	id INTEGER NOT NULL, 
	"Company" VARCHAR(255), 
	"CurrentGenerators__c" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"IsConverted" VARCHAR(255), 
	"IsUnreadByOwner" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"NumberofLocations__c" VARCHAR(255), 
	"Primary__c" VARCHAR(255), 
	"ProductInterest__c" VARCHAR(255), 
	"SICCode__c" VARCHAR(255), 
	"Status" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Lead" VALUES(1,'Farmers Coop. of Florida','All','Bertha','False','True','Boxer','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(2,'Abbott Insurance','All','Phyllis','False','True','Cotton','130.0','Yes','GC5000 series','2768','Open - Not Contacted');
INSERT INTO "Lead" VALUES(3,'Jackson Controls','All','Jeff','False','True','Glimpse','130.0','Yes','GC5000 series','2768','Open - Not Contacted');
INSERT INTO "Lead" VALUES(4,'Metropolitan Health Services','All','Mike','False','True','Braund','130.0','Yes','GC5000 series','2768','Open - Not Contacted');
INSERT INTO "Lead" VALUES(5,'International Shipping Co.','All','Patricia','False','True','Feager','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(6,'Cadinal Inc.','All','Brenda','False','True','Mcclure','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(7,'Emerson Transport','All','Violet','False','True','Maccleod','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(8,'TNR Corp.','All','Kathy','False','True','Snyder','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(9,'Delphi Chemicals','All','Tom','False','True','James','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(10,'Western Telecommunications Corp.','All','Shelly','False','True','Brownell','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(11,'Hendrickson Trading','John Deere','Pamela','False','True','Owenby','3.0','Yes','GC5000 series','7267','Closed - Not Converted');
INSERT INTO "Lead" VALUES(12,'Greenwich Media','All','Norm','False','True','May','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(13,'Pyramid Construction Inc.','All','Pat','False','True','Stumuller','130.0','Yes','GC5000 series','2768','Closed - Converted');
INSERT INTO "Lead" VALUES(14,'Dickenson plc','All','Andy','False','True','Young','130.0','Yes','GC5000 series','2768','Closed - Converted');
INSERT INTO "Lead" VALUES(15,'Aethna Home Products','All','Kristen','False','True','Akin','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(16,'Blues Entertainment Corp.','All','David','False','True','Monaco','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(17,'Ace Iron and Steel Inc.','All','Carolyn','False','True','Crenshaw','130.0','Yes','GC5000 series','2768','Closed - Not Converted');
INSERT INTO "Lead" VALUES(18,'Burlington Textiles Corp of America','John Deere','Jack','False','True','Rogers','3.0','Yes','GC5000 series','7267','Closed - Converted');
INSERT INTO "Lead" VALUES(19,'Zenith Industrial Partners','John Deere','Bill','False','True','Dadio Jr','3.0','Yes','GC5000 series','7267','Closed - Not Converted');
INSERT INTO "Lead" VALUES(20,'Pacific Retail Group','All','Eugena','False','True','Luce','130.0','Yes','GC5000 series','2768','Closed - Not Converted');
INSERT INTO "Lead" VALUES(21,'Highland Manufacturing Ltd.','All','Sandra','False','True','Eberhard','130.0','Yes','GC5000 series','2768','Working - Contacted');
INSERT INTO "Lead" VALUES(22,'American Banking Corp.','All','Betty','False','True','Bair','130.0','Yes','GC5000 series','2768','Working - Contacted');
CREATE TABLE "Opportunity" (
	id INTEGER NOT NULL, 
	"CloseDate" VARCHAR(255), 
	"CurrentGenerators__c" VARCHAR(255), 
	"DeliveryInstallationStatus__c" VARCHAR(255), 
	"IsPrivate" VARCHAR(255), 
	"MainCompetitors__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OrderNumber__c" VARCHAR(255), 
	"StageName" VARCHAR(255), 
	"TrackingNumber__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Opportunity" VALUES(1,'2021-10-30','','Yet to begin','False','','United Oil Installations','','Negotiation/Review','','11','');
INSERT INTO "Opportunity" VALUES(2,'2021-10-24','','Completed','False','','Edge Installation','835178','Closed Won','','4','');
INSERT INTO "Opportunity" VALUES(3,'2021-09-19','','','False','','Edge SLA','847564','Closed Won','','4','');
INSERT INTO "Opportunity" VALUES(4,'2021-10-29','','In progress','False','','United Oil Installations','427609','Closed Won','','11','');
INSERT INTO "Opportunity" VALUES(5,'2021-12-16','','Completed','False','','Grand Hotels Generator Installations','763546','Closed Won','','8','');
INSERT INTO "Opportunity" VALUES(6,'2021-12-11','John Deere','Completed','False','John Deere, Mitsubishi, Hawkpower','United Oil Refinery Generators','744343','Closed Won','830150301360','11','');
INSERT INTO "Opportunity" VALUES(7,'2021-09-30','','Yet to begin','False','','University of AZ Installations','','Proposal/Price Quote','','10','');
INSERT INTO "Opportunity" VALUES(8,'2021-09-28','','In progress','False','','Express Logistics SLA','','Perception Analysis','','9','');
INSERT INTO "Opportunity" VALUES(9,'2021-10-07','','In progress','False','','University of AZ SLA','654985','Closed Won','','10','');
INSERT INTO "Opportunity" VALUES(10,'2021-11-08','John Deere','Yet to begin','False','John Deere','Burlington Textiles Weaving Plant Generator','645612','Closed Won','830150301360','5','');
INSERT INTO "Opportunity" VALUES(11,'2021-11-10','','In progress','False','','United Oil Installations','554821','Closed Won','','11','');
INSERT INTO "Opportunity" VALUES(12,'2021-10-23','Fujitsu','Completed','False','Honda, Mitsubishi','United Oil Emergency Generators','847324','Closed Won','830150301420','11','');
INSERT INTO "Opportunity" VALUES(13,'2021-09-26','','In progress','False','','Grand Hotels SLA','254676','Closed Won','','8','');
INSERT INTO "Opportunity" VALUES(14,'2021-12-26','John Deere','','False','John Deere, Mitsubishi, Hawkpower','United Oil Standby Generators','525476','Closed Won','830150301360','11','');
INSERT INTO "Opportunity" VALUES(15,'2021-12-14','Fujitsu','Completed','False','Caterpillar','Grand Hotels Emergency Generators','387624','Closed Won','830150301360','8','');
INSERT INTO "Opportunity" VALUES(16,'2021-11-27','Caterpillar','','False','Caterpillar, Mitsubishi, Hawkpower','United Oil Plant Standby Generators','','Needs Analysis','','11','');
INSERT INTO "Opportunity" VALUES(17,'2022-01-08','','','False','John Deere, Mitsubishi, Hawkpower','Edge Emergency Generator','','Id. Decision Makers','','4','');
INSERT INTO "Opportunity" VALUES(18,'2021-11-15','','','False','Honda','Dickenson Mobile Generators','','Qualification','','7','');
INSERT INTO "Opportunity" VALUES(19,'2021-11-03','Yamaha','','False','Yamaha','United Oil Office Portable Generators','','Negotiation/Review','','11','');
INSERT INTO "Opportunity" VALUES(20,'2021-09-29','Hawkpower','','False','Fujitsu','Express Logistics Standby Generator','653276','Closed Won','830150301420','9','');
INSERT INTO "Opportunity" VALUES(21,'2021-11-06','Honda','Completed','False','Honda','GenePoint Standby Generator','908676','Closed Won','830150301420','1','');
INSERT INTO "Opportunity" VALUES(22,'2021-09-24','John Deere','Yet to begin','False','Fujitsu, Hawkpower','Grand Hotels Kitchen Generator','','Id. Decision Makers','','8','');
INSERT INTO "Opportunity" VALUES(23,'2021-12-18','Caterpillar','Yet to begin','False','John Deere','United Oil Refinery Generators','','Proposal/Price Quote','','11','');
INSERT INTO "Opportunity" VALUES(24,'2021-12-25','','In progress','False','','United Oil SLA','926363','Closed Won','','11','');
INSERT INTO "Opportunity" VALUES(25,'2022-01-02','Honda','Yet to begin','False','Honda','Grand Hotels Guest Portable Generators','','Value Proposition','','8','');
INSERT INTO "Opportunity" VALUES(26,'2022-01-02','John Deere','Completed','False','John Deere','Edge Emergency Generator','731645','Closed Won','830150301420','4','');
INSERT INTO "Opportunity" VALUES(27,'2021-10-03','Mitsubishi','Completed','False','Honda, Mitsubishi','University of AZ Portable Generators','768934','Closed Won','830150301360','10','');
INSERT INTO "Opportunity" VALUES(28,'2021-11-11','','','False','','Pyramid Emergency Generators','','Prospecting','','6','');
INSERT INTO "Opportunity" VALUES(29,'2021-09-27','Fujitsu','Yet to begin','False','Honda','Express Logistics Portable Truck Generators','','Value Proposition','','9','');
INSERT INTO "Opportunity" VALUES(30,'2021-12-27','Hawkpower, Fujitsu','Yet to begin','False','Hawkpower','GenePoint Lab Generators','','Id. Decision Makers','','1','');
INSERT INTO "Opportunity" VALUES(31,'2021-12-30','','In progress','False','','GenePoint SLA','546512','Closed Won','','1','');
COMMIT;
