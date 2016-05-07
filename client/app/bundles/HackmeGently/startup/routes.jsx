import React from 'react';
import { Route, IndexRoute } from 'react-router';

import HackmeGently from '../containers/HackmeGently';
import Test from '../containers/Test';
import Home from '../containers/Home';
import Comments from '../containers/Comments';

export default (
  <Route path="ui" component={HackmeGently}>
    <IndexRoute component={Home} />
    <Route path="home" component={Home}>
      <Route path="posts/:postId" component={Home}>
        <Route path="comments/:commentId" component={Comments}/>
      </Route>
    </Route>
  </Route>
);
