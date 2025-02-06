BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "chat_rooms" ADD COLUMN "_productsChatroomsProductsId" bigint;
ALTER TABLE "chat_rooms" ADD COLUMN "_usersBuyerchatroomsUsersId" bigint;
ALTER TABLE "chat_rooms" ADD COLUMN "_usersSellerchatroomsUsersId" bigint;
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_0"
    FOREIGN KEY("_productsChatroomsProductsId")
    REFERENCES "products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_1"
    FOREIGN KEY("_usersBuyerchatroomsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_2"
    FOREIGN KEY("_usersSellerchatroomsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "lounge_posts" ADD COLUMN "_usersLoungepostsUsersId" bigint;
ALTER TABLE ONLY "lounge_posts"
    ADD CONSTRAINT "lounge_posts_fk_0"
    FOREIGN KEY("_usersLoungepostsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "lounge_posts_comments" ADD COLUMN "_loungePostsCommentsLoungePostsId" bigint;
ALTER TABLE "lounge_posts_comments" ADD COLUMN "_usersLoungecommentsUsersId" bigint;
ALTER TABLE ONLY "lounge_posts_comments"
    ADD CONSTRAINT "lounge_posts_comments_fk_0"
    FOREIGN KEY("_loungePostsCommentsLoungePostsId")
    REFERENCES "lounge_posts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "lounge_posts_comments"
    ADD CONSTRAINT "lounge_posts_comments_fk_1"
    FOREIGN KEY("_usersLoungecommentsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "lounge_posts_likes" ADD COLUMN "_loungePostsLikesLoungePostsId" bigint;
ALTER TABLE "lounge_posts_likes" ADD COLUMN "_usersPostlikesUsersId" bigint;
ALTER TABLE ONLY "lounge_posts_likes"
    ADD CONSTRAINT "lounge_posts_likes_fk_0"
    FOREIGN KEY("_loungePostsLikesLoungePostsId")
    REFERENCES "lounge_posts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "lounge_posts_likes"
    ADD CONSTRAINT "lounge_posts_likes_fk_1"
    FOREIGN KEY("_usersPostlikesUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "lounge_posts_reports" ADD COLUMN "_loungePostsReportsLoungePostsId" bigint;
ALTER TABLE "lounge_posts_reports" ADD COLUMN "_usersPostreportsUsersId" bigint;
ALTER TABLE ONLY "lounge_posts_reports"
    ADD CONSTRAINT "lounge_posts_reports_fk_0"
    FOREIGN KEY("_loungePostsReportsLoungePostsId")
    REFERENCES "lounge_posts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "lounge_posts_reports"
    ADD CONSTRAINT "lounge_posts_reports_fk_1"
    FOREIGN KEY("_usersPostreportsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "messages" ADD COLUMN "_chatRoomsMessagesChatRoomsId" bigint;
ALTER TABLE "messages" ADD COLUMN "_usersMessagesUsersId" bigint;
ALTER TABLE ONLY "messages"
    ADD CONSTRAINT "messages_fk_0"
    FOREIGN KEY("_chatRoomsMessagesChatRoomsId")
    REFERENCES "chat_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "messages"
    ADD CONSTRAINT "messages_fk_1"
    FOREIGN KEY("_usersMessagesUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
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
    "region3" text,
    "region4" text,
    "salesStatus" text NOT NULL,
    "lat" double precision,
    "lng" double precision,
    "likesCount" bigint NOT NULL,
    "reportsCount" bigint NOT NULL,
    "isDeleted" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "_brandsProductsBrandsId" bigint,
    "_usersProductsUsersId" bigint
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "products_images" ADD COLUMN "_productsImagesProductsId" bigint;
ALTER TABLE ONLY "products_images"
    ADD CONSTRAINT "products_images_fk_0"
    FOREIGN KEY("_productsImagesProductsId")
    REFERENCES "products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "products_likes" ADD COLUMN "_productsLikesProductsId" bigint;
ALTER TABLE "products_likes" ADD COLUMN "_usersProductlikesUsersId" bigint;
ALTER TABLE ONLY "products_likes"
    ADD CONSTRAINT "products_likes_fk_0"
    FOREIGN KEY("_productsLikesProductsId")
    REFERENCES "products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "products_likes"
    ADD CONSTRAINT "products_likes_fk_1"
    FOREIGN KEY("_usersProductlikesUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "products_reports" ADD COLUMN "_productsReportsProductsId" bigint;
ALTER TABLE "products_reports" ADD COLUMN "_usersProductreportsUsersId" bigint;
ALTER TABLE ONLY "products_reports"
    ADD CONSTRAINT "products_reports_fk_0"
    FOREIGN KEY("_productsReportsProductsId")
    REFERENCES "products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "products_reports"
    ADD CONSTRAINT "products_reports_fk_1"
    FOREIGN KEY("_usersProductreportsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "user_terms" ADD COLUMN "_termsAndConditionsUsertermsTermsAndConditionsId" bigint;
ALTER TABLE "user_terms" ADD COLUMN "_usersUsertermsUsersId" bigint;
ALTER TABLE ONLY "user_terms"
    ADD CONSTRAINT "user_terms_fk_0"
    FOREIGN KEY("_termsAndConditionsUsertermsTermsAndConditionsId")
    REFERENCES "terms_and_conditions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_terms"
    ADD CONSTRAINT "user_terms_fk_1"
    FOREIGN KEY("_usersUsertermsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "users" ALTER COLUMN "region3" DROP NOT NULL;
ALTER TABLE "users" ALTER COLUMN "lat" DROP NOT NULL;
ALTER TABLE "users" ALTER COLUMN "lng" DROP NOT NULL;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "products"
    ADD CONSTRAINT "products_fk_0"
    FOREIGN KEY("_brandsProductsBrandsId")
    REFERENCES "brands"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "products"
    ADD CONSTRAINT "products_fk_1"
    FOREIGN KEY("_usersProductsUsersId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR mulli
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mulli', '20250203111802227', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250203111802227', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
