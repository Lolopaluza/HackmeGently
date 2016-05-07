import React, { PropTypes } from 'react';
import _ from 'lodash';
import {Link} from 'react-router';

// Simple example of a React "smart" component
export default class Home extends React.Component {

  constructor(props, context) {
    super(props, context);

    this.state = { posts: [] };

    _.bindAll(this, 'getPosts')
  }

  componentDidMount() {
    this.getPosts()
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

  render() {
    return (
      <div>
        {this.state.posts}
      </div>
    );
  }
}
