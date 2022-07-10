const express = require("express");
const router = new express.Router();
const ExpressError = require("../expressError");
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()


router.get("/", function(req, res, next) {

});


router.get("/:orderId", function(req, res, next) {

});

router.post("/newOrder", function(req, res, next) {
//   const result = jsonschema.validate(req.body, bookSchema);

//   if (!result.valid) {

//     let listOfErrors = result.errors.map(error => error.stack);
//     let error = new ExpressError(listOfErrors, 400);
//     return next(error);
//   }

//   const { book } = req.body;
//   return res.json(book);
});




module.exports = router;
