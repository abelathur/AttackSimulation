import logo from './logo.svg';
import './App.css';
import Home from './home';
import Windows from './windows';
import Linux from './linux';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';


function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={Home} />
        <Route path="/Windows" component={Windows} />
        <Route path="/Linux" component={Linux} />
      </Switch>
    </Router>
  );
}

export default App;
