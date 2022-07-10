const express = require("express");
const router = new express.Router();
const ExpressError = require("../expressError");
import { PrismaClient } from '@prisma/client'
const date = require('date-and-time');

const now = new Date();

const prisma = new PrismaClient()

// gets all orders and returns a paginated array of order objects to be used by the DOM
router.get("/", function(req, res, next) {
    const results = await prisma.order.findMany({
        skip: 3,
        take: 2,
      })
    if (results.length <= 0) {
        let error = new ExpressError('no results found', 204)
        return next(error)
    }

  return res.json(results);
});


router.get("/:orderId", function(req, res, next) {
    const { orderId } = req.params;

    const result = await prisma.user.findUnique({
        where: {
          id: orderId,
        },
        include: {
            items: true,
        }
      });

      if(!result){
        let error = new ExpressError('no result found', 204)
        return next(error)
    };

   return res.json(result)

});

router.post("/newOrder", function(req, res, next) {
    const {flavors, qty} = req.body;


   
    
    const newOrder = await prisma.orderItems.create({
        data: {
           

        },
    
    })
  
    return res.json(newOrder)
});




module.exports = router;
