/*
  Warnings:

  - You are about to drop the column `type` on the `Pizza` table. All the data in the column will be lost.

*/
-- CreateEnum
CREATE TYPE "Flavor" AS ENUM ('CHEESE', 'PEPPERONI', 'VEGGIE', 'MEAT');

-- AlterTable
ALTER TABLE "Pizza" DROP COLUMN "type",
ADD COLUMN     "flavor" "Flavor" NOT NULL DEFAULT 'CHEESE';
