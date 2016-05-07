import React, { PropTypes } from 'react';
import HackmeGentlyWidget from '../components/HackmeGentlyWidget';
import _ from 'lodash';

import ThemeManager from 'material-ui/lib/styles/theme-manager';
import Theme from '../lib/Theme';
import Colors from 'material-ui/lib/styles/colors';

import AppBarComponent from '../components/AppBarComponent';

const mainStyle = {
  fontFamily: "Helvetica",
  margin: "25px",
  fontSize: "16px"
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
          {this.props.children}
        </div>
      </div>
    );
  }
}

HackmeGently.childContextTypes = {
  muiTheme: React.PropTypes.object
};
