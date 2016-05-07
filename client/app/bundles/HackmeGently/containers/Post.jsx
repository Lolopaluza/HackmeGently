import React, { PropTypes } from 'react';
import _ from 'lodash';
import Comments from './Comments';


// Simple example of a React "smart" component
export default class Post extends React.Component {

  constructor(props, context) {
    super(props, context);

    this.state = { post: {} };

    _.bindAll(this, 'getPost')
  }

  componentDidMount() {
    this.getPost()
  }

  getPost() {
    let component = this;
    let url = `/posts/${this.props.params.postId}`;
    jQuery.getJSON(url, function(data) {
      console.log(data)
      component.setState({
        post: data.post
      });
    });
  }

  render() {
    return (
      <div>
        {this.state.post.content}
        <Comments postId={this.props.params.postId} />
      </div>
    );
  }
}
