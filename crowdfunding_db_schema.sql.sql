-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Creating 'compaign' teable 

CREATE TABLE "campaign" (
    "cf-id" int   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR (400)  NOT NULL,
    "description" VARCHAR (400)  NOT NULL,
    "goal" VARCHAR (400)   NOT NULL,
    "pledged" VARCHAR   NOT NULL,
    "outcome" VARCHAR (400)  NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR (400)  NOT NULL,
    "currency" VARCHAR (400)  NOT NULL,
    "launched_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "category_id" VARCHAR (400)  NOT NULL,
    "subcategory_id" VARCHAR (400)  NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf-id"
     )
);

-- Creating 'contacts' teable 

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

--Creating 'category' teable 

CREATE TABLE "category" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

-- Creating 'subcategory' teable 

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

-- forien keys, which is created by DBD online 

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");

-- In Orther to displing contents of all teabls 

SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM contacts
SELECT * FROM subcategory

