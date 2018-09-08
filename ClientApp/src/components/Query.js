class Query extends React.Component {
    constructor(props) {
      super(props);
      this.state = {
        target: true,
        suburb: ''
      };
  
      this.handleInputChange = this.handleInputChange.bind(this);
      this.handleSubmit = this.handleSubmit.bind(this);
    }
  
    handleInputChange(event) {
      const target = event.target;
      const name = target.name;
  
      this.setState({
        [name]: target.value
      });
    }

    handleSubmit(event) {
        if (window.confirm('Are you sure you want to start ' + this.state.target + ' in' + this.state.suburb)){
        event.preventDefault();
        }        
    }
  
    render() {
      return (
        <form>
            <label>
                Please pick your target:
                <select value={this.state.target} onChange={this.handleChange} type="selection" name="target">
                    <option value="cafe">Grapefruit</option>
                    <option value="restaurant">Restaurant</option>
                    <option value="childcare">Childcare</option>
                    <option value="fitness">Fitness</option>
                    <option value="bookstore">Bookstore</option>
                </select>
            </label>
         
            <br />
            <label>
                Please input your suburb:
            <input
                name="suburb"
                type="text"
                value={this.state.suburb}
                onChange={this.handleInputChange} />
            </label>
        </form>
      );
    }
  }