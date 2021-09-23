/*
  Warnings:

  - You are about to drop the column `country_id` on the `Cities` table. All the data in the column will be lost.
  - Added the required column `countryId` to the `Cities` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Cities` DROP FOREIGN KEY `Cities_country_id_fkey`;

-- AlterTable
ALTER TABLE `Cities` DROP COLUMN `country_id`,
    ADD COLUMN `countryId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Cities` ADD CONSTRAINT `Cities_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `Countries`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
