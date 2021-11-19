import React, { Component } from 'react'
import { connect } from 'react-redux'

import { fetchMedication } from '../actions/medicationsActions'

class LandingPage extends Component {

    componentDidMount() {
        this.props.fetchMedication()
    }
    
    render () {
        return (
            <main>
            <div className= "app-details">
                <h1 className="app-title"> Mental Health Tracker </h1>
                <p className="app-intro"> Manage your medicaitons, providers, behavior and more!</p>
            </div>
        </main>
        );
    }
}

export default connect(null, { fetchMedication })(LandingPage);