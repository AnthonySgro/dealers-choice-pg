const express = require("express");
const router = express.Router();
const {
    db,
    getAthletes,
    getExercises,
    getWorkouts,
    getWorkoutsForAthlete,
    getSumsForAthlete,
} = require("../db");

router.get("/athletes", async (req, res, next) => {
    const athletes = await getAthletes();
    res.send(athletes);
});

router.get("/exercises", async (req, res, next) => {
    const exercises = await getExercises();
    res.send(exercises);
});

router.get("/workouts/:id", async (req, res, next) => {
    const id = req.params.id;
    const workouts = await getWorkoutsForAthlete(id);
    res.send(workouts);
});

router.get("/workouts/summary/:id", async (req, res, next) => {
    const id = req.params.id;
    const sums = await getSumsForAthlete(id);
    res.send(sums);
});

module.exports = router;
