/*
  Warnings:

  - Added the required column `url` to the `SavedArticle` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "SavedArticle" ADD COLUMN     "url" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "_BundleToFeed" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_BundleToFeed_AB_unique" ON "_BundleToFeed"("A", "B");

-- CreateIndex
CREATE INDEX "_BundleToFeed_B_index" ON "_BundleToFeed"("B");

-- CreateIndex
CREATE INDEX "SavedArticle.authorId_url_index" ON "SavedArticle"("authorId", "url");

-- AddForeignKey
ALTER TABLE "_BundleToFeed" ADD FOREIGN KEY ("A") REFERENCES "Bundle"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_BundleToFeed" ADD FOREIGN KEY ("B") REFERENCES "Feed"("id") ON DELETE CASCADE ON UPDATE CASCADE;
