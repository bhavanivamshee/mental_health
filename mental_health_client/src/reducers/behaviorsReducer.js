export const behaviorsReducer = (state = [], action) => {
    switch(action.type){
        case 'FETCH_BEHAVIORS':
            return action.payload
        default:
            return state
    }
}