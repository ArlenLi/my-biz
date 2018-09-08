import React, { Component } from 'react';
import logo from '../Asset/Images/Logo.png'

export class Home extends Component {
  displayName = Home.name

  constructor(props) {
    super(props);
    this.state = {
      target: "cafe",
      suburb: ''
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
      if (window.confirm('Are you sure you want to start ' + this.state.target + ' in ' + this.state.suburb)){
        this.props.history.push('/Survey');
      }        
  }

  render() {
    return (
      <div class="col-md-4 col-md-offset-4">
      <img src={logo} width ="108%"/>
      <br />
      <br />

        <form onSubmit={this.handleSubmit}>
          <div class="form-group">
            <label>Please pick your target:</label>
                <select class="form-control" value={this.state.target} onChange={this.handleChange} name="target">
                    <option value="cafe">Grapefruit</option>
                    <option value="restaurant">Restaurant</option>
                    <option value="childcare">Childcare</option>
                    <option value="fitness">Fitness</option>
                    <option value="bookstore">Bookstore</option>
                    <option value="childrenParty">Children Party</option>
                </select>
            </div>
          
            <br />
            <div class="form-group">
              <label>Please input your suburb:</label>
              <input
                  class="form-control"
                  placeholder="Enter suburb"
                  name="suburb"
                  type="text"
                  value={this.state.suburb}
                  onChange={this.handleChange} />
            </div>
            <div class="col-md-8 col-md-offset-2 text-center"> 
              <button type="submit" class="btn btn-primary" value="Submit">Show me relevant information</button>
            </div>
        </form >
      </div>
    );
  }
}
