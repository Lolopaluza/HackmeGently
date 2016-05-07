import React, { PropTypes } from 'react';
import HackmeGentlyWidget from '../components/HackmeGentlyWidget';
import _ from 'lodash';

import ThemeManager from 'material-ui/lib/styles/theme-manager';
import Theme from '../lib/Theme';
import Colors from 'material-ui/lib/styles/colors';

import AppBarComponent from '../components/AppBarComponent';


// Simple example of a React "smart" component
export default class HackmeGently extends React.Component {

  render() {
    return (
      <div>
        <AppBarComponent />
        {this.props.children}
      </div>
    );
  }
}
