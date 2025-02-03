BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "products" DROP COLUMN "likesCount";
ALTER TABLE "products" DROP COLUMN "reportsCount";

--
-- MIGRATION VERSION FOR mulli
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mulli', '20250203103117226', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250203103117226', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
