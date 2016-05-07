import React, { PropTypes } from 'react';
import _ from 'lodash';
import {Link} from 'react-router';
import Home from './Home';

// Simple example of a React "smart" component
export default class Comments extends React.Component {

  constructor(props, context) {
    super(props, context);

    this.state = { comments: [] };

    _.bindAll(this, 'getComments')
  }

  componentDidMount() {
    this.getComments()
  }

  getComments() {
    let component = this;
    let url = `/posts/${this.props.postId}/comments/`;
    jQuery.getJSON(url, function(data) {
      console.log(data)
      component.setState({
        comments: data.comments
      });
    });
  }

  render() {
    return (
      <div>
        <h2>Comments:</h2>
        {this.state.comments.map(comment => <div>{comment.text}</div>)}
      </div>
    );
  }
}
