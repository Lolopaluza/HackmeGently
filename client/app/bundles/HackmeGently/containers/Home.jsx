import React, { PropTypes } from 'react';
import _ from 'lodash';
import {Link} from 'react-router';
import Colors from 'material-ui/lib/styles/colors';
import RaisedButton from 'material-ui/lib/raised-button';



// Simple example of a React "smart" component
const postsList = {
  backgroungColor: Colors.blue400,
}

const listItem = {
  fontSize: "16px",
  lineHeight: "260%",
}

const buttonStyle = {
 margin: 2,
 verticalAlign: "middle",
 float: "right"
};



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
    const component = this;
    return (
      <div style={postsList}>
        {this.state.posts.map(post =>
          <div>
            <Link to={`/ui/posts/${post.id}`} style={listItem}>{post.content}</Link>
            <RaisedButton label="LOL" secondary={true} style={buttonStyle}/>
          </div>)}
      </div>
    );
  }
}
