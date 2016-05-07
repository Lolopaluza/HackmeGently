import React, { PropTypes } from 'react';
import _ from 'lodash';

import AppBar from 'material-ui/lib/app-bar';
import IconButton from 'material-ui/lib/icon-button';
import FlatButton from 'material-ui/lib/flat-button';

const iconStyle = {
  fontFamily: "Material Icons",
  fontSize: "48px",
  color: "#FFFFFF",
  verticalAlign: "bottom"
}

export default class AppBarComponent extends React.Component {

  render() {
    return(
      <AppBar
        title="<Hack me Gent-ley />"
        titleStyle={{ textAlign: "center" }}
        iconElementLeft={<i style={iconStyle} className="material-icons">code</i>}
        iconElementRight={<FlatButton label="// A_bug" />}
      />
    );
  }
}
