import React, { PropTypes } from 'react';
import _ from 'lodash';
import {Link} from 'react-router';
import Colors from 'material-ui/lib/styles/colors';

// Simple example of a React "smart" component
const postsList = {
  backgroungColor: Colors.blue400,
}

const listItem = {
  color: Colors.grey300,
}

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
      <div style={postsList}>
        {this.state.posts.map(post =>
          <p style={listItem}>
            <Link to={"/posts/${post.id}"}>{post.content}</Link>
          </p>)}
      </div>
    );
  }
}
