const pg = require("pg");
const sqlSeed = require("./sqlSeed");
const db = new pg.Client(
    process.env.DATABASE || "postgres://localhost/dealers_choice_pg",
);

const syncAndSeed = async () => {
    try {
        const SQL = await sqlSeed();
        await db.connect();
        await db.query(SQL);
        console.log("Data Synced");
    } catch (err) {
        console.log(err);
    }
};

const getAthletes = async () => {
    try {
        return (await db.query("SELECT * FROM athletes")).rows;
    } catch (err) {
        console.log(err);
    }
};

const getExercises = async () => {
    try {
        return (await db.query("SELECT * FROM exercises")).rows;
    } catch (err) {
        console.log(err);
    }
};

const getWorkouts = async () => {
    try {
        return (await db.query("SELECT * FROM workouts")).rows;
    } catch (err) {
        console.log(err);
    }
};

const getWorkoutsForAthlete = async (id) => {
    try {
        return (
            await db.query(`SELECT * FROM all_values WHERE athlete_id=$1`, [id])
        ).rows;
    } catch (err) {
        console.log(err);
    }
};

const getSumsForAthlete = async (id) => {
    try {
        return (
            await db.query(`SELECT * FROM athlete_type_freq WHERE athlete=$1`, [
                id,
            ])
        ).rows;
    } catch (err) {
        console.log(err);
    }
};

module.exports = {
    syncAndSeed,
    db,
    getAthletes,
    getExercises,
    getWorkouts,
    getWorkoutsForAthlete,
    getSumsForAthlete,
};
