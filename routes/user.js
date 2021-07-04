const express = require('express');
const { body } = require('express-validator/check');

const user_C = require('../controller/user_C');



const router = express.Router();


router.post('/createUser', user_C.createUserController);
router.post('/login', user_C.loginController);



module.exports = router;