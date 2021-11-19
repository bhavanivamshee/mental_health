import { combineReducers } from "redux";

import { medicationsReducer } from './behaviorsReducer'
import { insurancesReducer } from './insurancesReducer'
import { behaviorsReducer } from './behaviorsReducer'
import { authReducer } from './authReducer'


export const rootReducer = combineReducers({
    medications: medicationsReducer,
    insurances: insurancesReducer,
    behaviors: behaviorsReducer,
    auth: authReducer

});

export default rootReducer;