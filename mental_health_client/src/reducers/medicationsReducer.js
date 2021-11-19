export const medicationsReducer = (state = [], action) => {
    switch(action.type){
        case 'FETCH_MEDICATIONS':
            return action.payload
        default:
            return state
    }
}