import React, { Component } from "react";
import ReactDom from "react-dom";
import axios from "axios";
import ExerciseGrouping from "./ExerciseGrouping.jsx";
import ExerciseHeader from "./ExerciseHeader.jsx";
import { isEmpty } from "lodash";

class Main extends Component {
    constructor() {
        super();
        this.state = {
            mainLabels: ["Current Clients"],
            athletes: [],
            selectedAthlete: {},
            selectedAthleteWorkouts: [],
            selectedAthleteSummary: [],
        };
        this.updateSelectedAthlete = this.updateSelectedAthlete.bind(this);
        this.backToHomepage = this.backToHomepage.bind(this);
    }

    async componentDidMount() {
        const athletes = (await axios.get("/api/athletes")).data;
        await this.setState({
            athletes: athletes,
        });
    }

    async updateSelectedAthlete(athlete) {
        const workouts = (await axios.get(`/api/workouts/${athlete.id}`)).data;
        const summary = (await axios.get(`/api/workouts/summary/${athlete.id}`))
            .data;
        await this.setState({
            labels: ["Summary", "All Workouts"],
            selectedAthlete: athlete,
            selectedAthleteWorkouts: workouts,
            selectedAthleteSummary: summary,
        });
    }

    async backToHomepage() {
        const athletes = (await axios.get("/api/athletes")).data;
        this.setState({
            mainLabels: ["Current Clients"],
            athletes: athletes,
            selectedAthlete: {},
            selectedAthleteWorkouts: [],
            selectedAthleteSummary: [],
        });
    }

    render() {
        const {
            athletes,
            selectedAthlete,
            labels,
            selectedAthleteWorkouts,
            selectedAthleteSummary,
        } = this.state;

        if (isEmpty(selectedAthlete)) {
            return (
                <React.Fragment>
                    <h1>Exercise Logger</h1>
                    <div id="mainApp">
                        <h2>{"Average Joe's Gym"}</h2>
                        <div className="container" id="header-container">
                            <ExerciseHeader label={"Athlete"} />
                        </div>
                        <div className="container" id="substance-container">
                            <ExerciseGrouping
                                data={athletes}
                                updateAthlete={this.updateSelectedAthlete}
                            />
                        </div>
                        <div className="container" id="substance-container">
                            <button onClick={this.backToHomepage}>Back</button>
                        </div>
                    </div>
                </React.Fragment>
            );
        } else {
            return (
                <React.Fragment>
                    <h1>Exercise Logger</h1>
                    <div id="mainApp">
                        <h2>{selectedAthlete.name}</h2>
                        <div className="container" id="header-container">
                            {labels.map((label, idx) => (
                                <ExerciseHeader label={label} key={idx} />
                            ))}
                        </div>
                        <div className="container" id="substance-container">
                            <ExerciseGrouping data={selectedAthleteSummary} />
                            <ExerciseGrouping data={selectedAthleteWorkouts} />
                        </div>
                    </div>
                    <div className="container" id="substance-container">
                        <button onClick={this.backToHomepage}>Back</button>
                    </div>
                </React.Fragment>
            );
        }
    }
}

ReactDom.render(<Main />, document.querySelector("#app"));
