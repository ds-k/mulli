BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "brands" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "brands" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "englishName" text NOT NULL,
    "logoImageUrl" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR mulli
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mulli', '20250123083256864', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250123083256864', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
