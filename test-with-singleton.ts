
import { prismaMock } from './singleton'
const { jest, test, expect } = require('jest-extended')

import { findOrder } from './functions-without-context'
const date = require('date-and-time');

const now = new Date();

test('should get new order ', async () => {
  const order = {
    id: 1,
    createdAt: date.format(now, 'YYYY/MM/DD HH:mm:ss'),
    updatedAt: date.format(now, 'YYYY/MM/DD HH:mm:ss'),
    pizzaId: 1,
  }
// FIXME: 'mockResolvedValue does not exist' seems to be a larger issue with unit testing in prisma, solution not obvious by googling, will have to research more
  prismaMock.order.findUnique.mockResolvedValue(order)

  await expect(findOrder(order)).resolves.toEqua({
    id: 1,
    createdAt: date.format(now, 'YYYY/MM/DD HH:mm:ss'),
    updatedAt: date.format(now, 'YYYY/MM/DD HH:mm:ss'),
    pizzaId: 1,
  })
})

