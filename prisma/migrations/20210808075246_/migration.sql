/*
  Warnings:

  - You are about to drop the column `userId` on the `Feed` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Feed" DROP CONSTRAINT "Feed_userId_fkey";

-- AlterTable
ALTER TABLE "Feed" DROP COLUMN "userId";
