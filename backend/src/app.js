const express = require('express');
const fileUpload = require('express-fileupload');

const authController = require('./controllers/authController');
const searchController = require('./controllers/searchController');
const exerciseController = require('./controllers/exerciseController');
const setController = require('./controllers/setController');
const friendshipController = require('./controllers/friendshipController');
const userModel = require('./models/userModel');
const authenticate = require('./middlewares/authMiddleware');

const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(fileUpload({ limits: { fileSize: 10000000 }, abortOnLimit: true }));

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

const apiPrefix = '/api'

app.get(`${apiPrefix}/`, async (req, res) => { res.end('flexify backend') })

// Routes
app.post(`${apiPrefix}/signin`, authController.signIn);
app.post(`${apiPrefix}/signup`, authController.signUp);

app.post(`${apiPrefix}/uploadProfilePicture`, authenticate, userModel.uploadProfilePicture);
app.post(`${apiPrefix}/editAccount`, authenticate, userModel.editAccount);

app.get(`${apiPrefix}/searchExercises`, searchController.searchExercises);
app.get(`${apiPrefix}/searchExerciseByMuscle`, searchController.searchExerciseByMuscle);
app.get(`${apiPrefix}/searchUsers`, searchController.searchUsers);
app.get(`${apiPrefix}/getProfilePicture`, searchController.getProfilePicture);

app.post(`${apiPrefix}/submitExercise`, authenticate, exerciseController.submitExercise)
app.post(`${apiPrefix}/deleteExercise`, authenticate, exerciseController.deleteExercise)
app.get(`${apiPrefix}/getExercises`, authenticate, exerciseController.getExercises)

app.post(`${apiPrefix}/submitSet`, authenticate, setController.submitSet)
app.post(`${apiPrefix}/deleteSet`, authenticate, setController.deleteSet)
app.get(`${apiPrefix}/getSets`, authenticate, setController.getSets)

app.post(`${apiPrefix}/acceptFriendshipRequest`, authenticate, friendshipController.acceptFriendshipRequest)
app.post(`${apiPrefix}/sendFriendshipRequest`, authenticate, friendshipController.sendFriendshipRequest)
app.post(`${apiPrefix}/rejectFriendshipRequest`, authenticate, friendshipController.rejectFriendshipRequest)
app.post(`${apiPrefix}/removeFriendship`, authenticate, friendshipController.removeFriendship)
app.get(`${apiPrefix}/getFriendshipRequests`, authenticate, friendshipController.getFriendshipRequests)
app.get(`${apiPrefix}/getFriends`, authenticate, friendshipController.getFriends)



// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on PORT: ${PORT}`);
});
