import React, { Component } from 'react';

export class InputCheckbox extends Component {
    static get defaultProps() {
        return {
            checked: true
        }
    }

    render() {
        return(
            <input
                checked={this.props.checked}
                type='checkbox'
                {...this.props}
            />
        )
    }


}
