import React, {Component} from 'react';
import { InputCheckbox } from './InputCheckbox';
import './PopulationSurvey.css';

export class EmploymentSurvey extends Component {
    constructor(props) {
        super(props);
        this.state = {
            checked: [true, true, true]
        }
    }

    selectAll(event) {
        this.setState({
            checked: this.state.checked.map(() => {
                return event.target.checked
            })
        });
    }

    handleChange(index, event) {
        var checked = this.state.checked;
        checked[index] = event.target.checked;

        this.setState({
            checked: checked
        })
    }

    render() {
        var isAllChecked = this.state.checked.filter((c) => {
            return c;
        }).length === this.state.checked.length;
        return(
            <div class="panel panel-default">
                <div class="panel-body custom-control custom-checkbox">
                    <InputCheckbox onChange={this.selectAll.bind(this)} checked={isAllChecked} />
                    <label class="lb-lg" for="defaultUnchecked">Employment</label>
                </div>
                <div class="panel panel-default">
                    <div class = "panel-body">                
                    <InputCheckbox
                        checked={this.state.checked[0]}
                        onChange={this.handleChange.bind(this, 0)}
                    />
                    <label class="lb-md">Employment Type</label>
                    <div class = "panel-body">
                        <div class="custom-control custom-radio disabled">
                            <input type="radio" class="custom-control-input" id="defaultGroupExample1" name="employmentType" checked disabled={this.state.checked[0]?"":"disabled"}/>
                            <label class="custom-control-label lb-sm" for="defaultGroupExample1">Full Time</label>
                        </div>
                        <div class="custom-control custom-radio ">
                            <input type="radio" class="custom-control-input" id="defaultGroupExample2" name="employmentType"  disabled={this.state.checked[0]?"":"disabled"}/>
                            <label class="custom-control-label lb-sm" for="defaultGroupExample2">Part Time </label>
                        </div>
                        </div>
                        </div>
                    </div>

                <div class="panel panel-default">
                    <div class = "panel-body">                
                    <InputCheckbox
                        checked={this.state.checked[1]}
                        onChange={this.handleChange.bind(this, 1)}
                    />
                    <label class="lb-md">Occupation</label>
                    <div class = "panel-body">
                        <div class="custom-control custom-radio disabled">
                            <input type="radio" class="custom-control-input" id="defaultGroupExample1" name="occupation"  checked disabled={this.state.checked[1]?"":"disabled"}/>
                            <label class="custom-control-label lb-sm" for="defaultGroupExample1">Professionals</label>
                        </div>
                        <div class="custom-control custom-radio ">
                            <input type="radio" class="custom-control-input" id="defaultGroupExample2" name="occupation"  disabled={this.state.checked[1]?"":"disabled"}/>
                            <label class="custom-control-label lb-sm" for="defaultGroupExample2">Clerks</label>
                        </div>
                        </div>
                        </div>
                    </div>

                

                <div class="panel panel-default">
                    <div class = "panel-body">                
                    <InputCheckbox
                        checked={this.state.checked[2]}
                        onChange={this.handleChange.bind(this, 2)}
                    />
                    <label class="lb-md">Travel Method for Working</label>
                    <div class = "panel-body">
                        <div class="custom-control custom-radio disabled">
                            <input type="radio" class="custom-control-input" id="defaultGroupExample1" name="travelMethodForWorking"  checked disabled={this.state.checked[2]?"":"disabled"}/>
                            <label class="custom-control-label lb-sm" for="defaultGroupExample1">By Tram</label>
                        </div>
                        <div class="custom-control custom-radio ">
                            <input type="radio" class="custom-control-input" id="defaultGroupExample2" name="travelMethodForWorking"  disabled={this.state.checked[2]?"":"disabled"}/>
                            <label class="custom-control-label lb-sm" for="defaultGroupExample2">Self Drive</label>
                        </div>
                        </div>
                        </div>
                    </div>              
            </div>
        )
    }
}