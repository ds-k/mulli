BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "products" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "price" double precision NOT NULL,
    "brandId" bigint NOT NULL,
    "clubType" text NOT NULL,
    "shaftType" text NOT NULL,
    "flexType" text NOT NULL,
    "year" bigint NOT NULL,
    "region1" text NOT NULL,
    "region2" text NOT NULL,
    "region3" text NOT NULL,
    "region4" text,
    "lat" double precision NOT NULL,
    "lng" double precision NOT NULL,
    "likesCount" bigint NOT NULL,
    "reportsCount" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "users" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" bigserial PRIMARY KEY,
    "socialId" text NOT NULL,
    "socialType" text NOT NULL,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "userProfileUrl" text NOT NULL,
    "region1" text NOT NULL,
    "region2" text NOT NULL,
    "region3" text NOT NULL,
    "region4" text,
    "lat" double precision NOT NULL,
    "lng" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR mulli
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mulli', '20250127090228430', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250127090228430', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
