import React, { Component } from 'react';
import logo from '../Asset/Images/Logo.png'
import risk from '../Asset/Images/Risk.png'

export class Survey extends Component {
  displayName = Survey.name

  constructor(props) {
    super(props);
    this.state = {
      agingGroup: "0-9",
      maxCapacity: 0,
      avergeCost: 0
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    const target = event.target;
    const name = target.name;

    this.setState({
      [name]: target.value
    });
  }

  handleSubmit(event) {
        this.setState({
            showResults: true
        })
        event.preventDefault();
             
  }

  render() {
    return (
      <div class="col-md-4 col-md-offset-4">
      <img src={logo} width ="108%"/>
      <br />
      <br />

        <form onSubmit={this.handleSubmit}>
          <div class="form-group">
            <label>which is your customer aging group?</label>
                <select class="form-control" value={this.state.agingGroup} onChange={this.handleChange} name="agingGroup">
                    <option value="0-9">0-9</option>
                    <option value="10-19">10-19"</option>
                    <option value="20-29">10-19"</option>
                    <option value="30-39">30-39</option>
                    <option value="40-49">40-49</option>
                    <option value="50-59">50-59</option>
                    <option value="60-69">60-69</option>
                    <option value="70-79">70-79</option>
                    <option value="80-89">80-89</option>
                </select>
            </div>
          
            <br />
            <div class="form-group">
              <label>What is the estimated max capacity of your place?</label>
              <input
                  class="form-control"
                  name="maxCapacity"
                  type="number"
                  value={this.state.maxCapacity}
                  onChange={this.handleChange} />
            </div>

              <br />
            <div class="form-group">
              <label>What is estimated average cost per person of your place?</label>
              <input
                  class="form-control"
                  name="avergeCost"
                  type="number"
                  value={this.state.avergeCost}
                  onChange={this.handleChange} />
            </div>
            <div class="col-md-8 col-md-offset-2 text-center"> 
              <button type="submit" class="btn btn-primary" value="Submit">Calculate the risk rate</button>
            </div>
        </form >

        <div>
            {this.state.showResults ? <Results /> : null}
        </div>
      </div>
    );
  }
}

// var Results = React.createClass({
//     render: function() {
//         return (
//             <img src ={logo} />
//         );
//     }   
// })

export default class Results extends React.Component {
    render(){
        return (
            <img src ={risk} />
        );
     }
}