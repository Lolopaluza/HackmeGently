import React from 'react';
import { Route, IndexRoute } from 'react-router';

import HackmeGently from '../containers/HackmeGently';
import Home from '../containers/Home';
import Post from '../containers/Post';

export default (
  <Route path="ui" component={HackmeGently}>
    <IndexRoute component={Home} />
      <Route path="posts/:postId" component={Post}>
      </Route>
  </Route>
);
