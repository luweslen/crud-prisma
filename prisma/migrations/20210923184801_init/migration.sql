-- CreateTable
CREATE TABLE `Cities` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `country_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Cities` ADD CONSTRAINT `Cities_country_id_fkey` FOREIGN KEY (`country_id`) REFERENCES `Countries`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
