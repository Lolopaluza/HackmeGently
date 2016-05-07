import React, { PropTypes } from 'react';
import HackmeGentlyWidget from '../components/HackmeGentlyWidget';
import _ from 'lodash';

// Simple example of a React "smart" component
export default class HackmeGently extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  constructor(props, context) {
    super(props, context);

    console.log(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { name: this.props.user.email };

    // Uses lodash to bind all methods to the context of the object instance, otherwise
    // the methods defined here would not refer to the component's class, not the component
    // instance itself.
    _.bindAll(this, 'updateName');
  }

  updateName(name) {
    this.setState({ name });
  }

  render() {
    return (
      <div>
        <HackmeGentlyWidget name={this.state.name} updateName={this.updateName} />
      </div>
    );
  }
}
