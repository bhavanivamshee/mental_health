export const insurancesReducer = (state = [], action) => {
    switch(action.type){
        case 'FETCH_INSURANCES':
            return action.payload
        default:
            return state
    }
}