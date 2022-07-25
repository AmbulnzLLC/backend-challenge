import prisma from './client'

interface findOrder {
    id: number
    createdAt: Date
    updatedAt: Date 
    pizzaId: number
}

export async function findOrder(order: findOrder) {
  if (order) {
    return await prisma.order.findUnique({
        where: { id: order.id },
    })
  } else {
    return new Error('order does not exist')
  }
}

