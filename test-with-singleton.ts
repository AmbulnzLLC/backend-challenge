
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
//! FIXME: 'mockResolvedValue does not exist' seems to be a larger issue with unit testing library dependencie in prisma, reached out to Prisma team for insight
  prismaMock.order.findUnique.mockResolvedValue(order)

  await expect(findOrder(order)).resolves.toEqual({
    id: 1,
    createdAt: order.createdAt,
    updatedAt: order.updatedAt,
  })
})

