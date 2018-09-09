import React, {Component} from 'react';
import { PopulationSurvey } from './PopulationSurvey';
import { EducationSurvey } from './EducationSurvey';
import { EmploymentSurvey } from './EmploymentSurvey';

export class Ranking extends Component {
    render() {
        return(
            <div class="container">
                <div class="row text-center">
                    <h1>Choose your ranking preference</h1>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <PopulationSurvey />
                    </div>
                    <div class="col-md-4">
                        <EducationSurvey />
                    </div>
                    <div class="col-md-4">
                        <EmploymentSurvey />
                    </div>
                </div>
                <div clas="row">
                    <div class="col-md-4 col-md-offset-4">
                    <button type="button" class="btn btn-primary btn-block">Calculate the risk rate</button>
                    </div>
                </div>
            </div>
        )
    }
}