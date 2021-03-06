import React, { Component } from "react";

class ExerciseHeader extends Component {
    constructor() {
        super();
        this.state = {};
    }
    render() {
        return (
            <div className="exercise-header">
                <h3>{this.props.label}</h3>
            </div>
        );
    }
}

export default ExerciseHeader;
