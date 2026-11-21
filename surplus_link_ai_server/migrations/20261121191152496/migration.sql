BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "food_listing" (
    "id" bigserial PRIMARY KEY,
    "donorUserId" bigint NOT NULL,
    "organisationId" bigint,
    "title" text NOT NULL,
    "rawDescription" text NOT NULL,
    "category" text NOT NULL,
    "quantity" bigint NOT NULL,
    "unit" text NOT NULL,
    "availableUntil" timestamp without time zone NOT NULL,
    "pickupVenue" text NOT NULL,
    "latitude" double precision,
    "longitude" double precision,
    "handlingNotes" text,
    "missingFieldsFlagged" boolean NOT NULL,
    "status" text NOT NULL,
    "acceptedNgoId" bigint,
    "rescueSessionId" bigint,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "handover_verification" (
    "id" bigserial PRIMARY KEY,
    "rescueSessionId" bigint NOT NULL,
    "foodListingId" bigint NOT NULL,
    "handoverToken" text NOT NULL,
    "isUsed" boolean NOT NULL,
    "generatedByUserId" bigint NOT NULL,
    "verifiedByUserId" bigint,
    "expiresAt" timestamp without time zone NOT NULL,
    "verifiedAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "handover_token_idx" ON "handover_verification" USING btree ("handoverToken");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "organisation" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "type" text NOT NULL,
    "maxCapacityMeals" bigint NOT NULL,
    "serviceAreaKm" double precision NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "address" text NOT NULL,
    "operatingHoursStart" text NOT NULL,
    "operatingHoursEnd" text NOT NULL,
    "acceptedCategories" text NOT NULL,
    "isVerified" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "pickup_assignment" (
    "id" bigserial PRIMARY KEY,
    "rescueSessionId" bigint NOT NULL,
    "foodListingId" bigint NOT NULL,
    "volunteerUserId" bigint NOT NULL,
    "pickupStatus" text NOT NULL,
    "pickupInstructions" text,
    "assignedAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rescue_session" (
    "id" bigserial PRIMARY KEY,
    "joinCode" text NOT NULL,
    "foodListingId" bigint NOT NULL,
    "hostDonorId" bigint NOT NULL,
    "acceptedNgoId" bigint,
    "assignedVolunteerId" bigint,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "join_code_idx" ON "rescue_session" USING btree ("joinCode");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "session_participant" (
    "id" bigserial PRIMARY KEY,
    "rescueSessionId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "userName" text NOT NULL,
    "role" text NOT NULL,
    "joinedAt" timestamp without time zone NOT NULL,
    "isOnline" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "session_user_idx" ON "session_participant" USING btree ("rescueSessionId", "userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "phone" text,
    "role" text NOT NULL,
    "organisationId" bigint,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR surplus_link_ai
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('surplus_link_ai', '20261121191152496', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261121191152496', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20261015164015382', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261015164015382', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260924105232991', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260924105232991', "timestamp" = now();


COMMIT;
