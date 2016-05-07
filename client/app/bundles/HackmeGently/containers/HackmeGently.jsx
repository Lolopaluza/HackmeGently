import React, { PropTypes } from 'react';
import HackmeGentlyWidget from '../components/HackmeGentlyWidget';
import _ from 'lodash';

import ThemeManager from 'material-ui/lib/styles/theme-manager';
import Theme from '../lib/Theme';
import Colors from 'material-ui/lib/styles/colors';
import injectTapEventPlugin from 'react-tap-event-plugin';

import AppBarComponent from '../components/AppBarComponent';
// import GridComponent from '../components/GridComponent';


injectTapEventPlugin();

const mainStyle = {
  fontFamily: "Roboto, sans-serif",
  margin: "25px",
  padding: "15px",
  fontSize: "16px",
  letterSpacing: "1px",
  lineHeight: "170%",
  color: Colors.grey300,
  background: Colors.blue400
}

const postTitle = {
  color: Colors.grey300,
  textAlign: "Center",
  letterSpacing: "2px",
}

// Simple example of a React "smart" component
export default class HackmeGently extends React.Component {

  getChildContext() {
    return {
      muiTheme: ThemeManager.getMuiTheme(Theme),
    };
  }

  render() {
    return (
      <div>
        <AppBarComponent />
        <div style={mainStyle}>
          <h2 style={postTitle}>Random Posts</h2><hr/><p></p>
          {this.props.children}
        </div>
      </div>
    );
  }
}

HackmeGently.childContextTypes = {
  muiTheme: React.PropTypes.object
};
