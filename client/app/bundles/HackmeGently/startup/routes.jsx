import React from 'react';
import { Route, IndexRoute } from 'react-router';

import HackmeGently from '../containers/HackmeGently';
import Test from '../containers/Test';
import Home from '../containers/Home';

export default (
  <Route path="ui" component={HackmeGently}>
    <IndexRoute component={Home} />
    <Route path="test" component={Test}/>
  </Route>
);
