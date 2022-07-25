/*
  Warnings:

  - You are about to drop the `Orderitem` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `pizzaId` to the `Order` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `Pizza` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Orderitem" DROP CONSTRAINT "Orderitem_orderId_fkey";

-- DropForeignKey
ALTER TABLE "Orderitem" DROP CONSTRAINT "Orderitem_pizzaId_fkey";

-- AlterTable
ALTER TABLE "Order" ADD COLUMN     "pizzaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Pizza" ADD COLUMN     "quantity" INTEGER NOT NULL;

-- DropTable
DROP TABLE "Orderitem";

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_pizzaId_fkey" FOREIGN KEY ("pizzaId") REFERENCES "Pizza"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
