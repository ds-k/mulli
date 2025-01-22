BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "brands" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "logoImageUrl" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "chat_rooms" (
    "id" bigserial PRIMARY KEY,
    "productId" bigint NOT NULL,
    "buyerId" bigint NOT NULL,
    "sellerId" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lounge_posts" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "content" text NOT NULL,
    "likesCount" bigint NOT NULL,
    "reportsCount" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lounge_posts_comments" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "postId" bigint NOT NULL,
    "content" text NOT NULL,
    "likesCount" bigint NOT NULL,
    "reportsCount" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lounge_posts_likes" (
    "id" bigserial PRIMARY KEY,
    "postId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lounge_posts_reports" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "postId" bigint NOT NULL,
    "reason" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "messages" (
    "id" bigserial PRIMARY KEY,
    "chatRoomId" bigint NOT NULL,
    "senderId" bigint NOT NULL,
    "messageType" text NOT NULL,
    "content" text NOT NULL,
    "isRead" boolean NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

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
    "location" GEOGRAPHY(Point, 4326) NOT NULL,
    "likesCount" bigint NOT NULL,
    "reportsCount" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products_images" (
    "id" bigserial PRIMARY KEY,
    "productId" bigint NOT NULL,
    "s3Url" text NOT NULL,
    "isThumbnail" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products_likes" (
    "id" bigserial PRIMARY KEY,
    "productId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products_reports" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "productId" bigint NOT NULL,
    "reason" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "terms_and_conditions" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "isRequired" boolean NOT NULL,
    "version" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_terms" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "termId" bigint NOT NULL,
    "isAgreed" boolean NOT NULL,
    "agreedAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

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
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR mulli
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mulli', '20250122162653397', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250122162653397', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
