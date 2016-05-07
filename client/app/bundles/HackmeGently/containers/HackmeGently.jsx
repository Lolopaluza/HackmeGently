import React, { PropTypes } from 'react';
import HackmeGentlyWidget from '../components/HackmeGentlyWidget';
import _ from 'lodash';

// Simple example of a React "smart" component
export default class HackmeGently extends React.Component {

  render() {
    return (
      <div>
        {this.props.children}
      </div>
    );
  }
}
