import React, { PropTypes } from 'react';
import HackmeGentlyWidget from '../components/HackmeGentlyWidget';
import _ from 'lodash';

// Simple example of a React "smart" component
export default class HackmeGently extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
    posts: PropTypes.array.isRequired,
  };

  constructor(props, context) {
    super(props, context);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { name: this.props.name };

    // Uses lodash to bind all methods to the context of the object instance, otherwise
    // the methods defined here would not refer to the component's class, not the component
    // instance itself.
    _.bindAll(this, 'updateName');
    _.bindAll(this, 'getPosts')
  }

  getPosts() {
    let component = this;
    let url = "/posts.json";
    jQuery.getJSON(url, function(data) {
      console.log(data)
      component.setState({
        posts: data.posts
      });
    });
  }

  updateName(name) {
    this.setState({ name });
  }

  render() {
    return (
      <div>
        {this.props.children}
      </div>
    );
  }
}
