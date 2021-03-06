import React, { Component } from "react";

class ExerciseGrouping extends Component {
    constructor() {
        super();
        this.state = {};
    }
    render() {
        const { data, updateAthlete } = this.props;
        if (data.length === 0) {
            return <div>Test</div>;
        } else if (data[0].name) {
            return (
                <div className="exercise-grouping">
                    <ul>
                        {data.map((item, idx) => (
                            <li className="exercise-grouping-item" key={idx}>
                                <a onClick={() => updateAthlete(item)}>
                                    {item.name}
                                </a>
                            </li>
                        ))}
                    </ul>
                </div>
            );
        } else if (data[0].number_of_workouts_by_category) {
            return (
                <div className="exercise-grouping">
                    <ul>
                        {data.map((item, idx) => (
                            <li className="exercise-grouping-item" key={idx}>
                                <a>
                                    {`${item.category}: ${item.number_of_workouts_by_category}`}
                                </a>
                            </li>
                        ))}
                    </ul>
                </div>
            );
        } else {
            return (
                <div className="exercise-grouping">
                    <ul>
                        {data.map((item, idx) => (
                            <li className="exercise-grouping-item" key={idx}>
                                <a>
                                    {`Exercise: ${
                                        item.exercise
                                    }, Date: ${item.date.substring(5, 10)}`}
                                </a>
                            </li>
                        ))}
                    </ul>
                </div>
            );
        }
    }
    // <li className="exercise-grouping-item" key={idx}>
    //     <a>{item.name}</a>
    // </li>

    // : item.category ? (
    //     <a>
    //         {`${item.category}: ${item.number_of_workouts_by_category}`}
    //     </a>
    // ) : (
    //     "hi"
    // )}
}

export default ExerciseGrouping;
